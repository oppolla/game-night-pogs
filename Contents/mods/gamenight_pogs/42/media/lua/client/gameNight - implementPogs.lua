local applyItemDetails = require "gameNight - applyItemDetails"
local deckActionHandler = applyItemDetails.deckActionHandler
local gamePieceAndBoardHandler = applyItemDetails.gamePieceAndBoardHandler


local pogs = {}
pogs.series = {
	["LimitedEdition"]=30,
	["Pog_BirdsEye_"]=12,
	["Pog_Christmas_"]=12,
	["Pog_Classics_"]=36,
	["Pog_Series1_"]=138,
	["Pog_Series2_"]=73,
	["Pog_TheGame_"]=30,
	["Pog_WorldTour_"]=30,
}
pogs.items = {}
pogs.altNames = {}
for seriesID,numberOf in pairs(pogs.series) do
	for i=1, numberOf do
		local pogID = seriesID..i
		pogs.altNames[pogID] = "Pogs"
		table.insert(pogs.items, pogID)
	end
end
deckActionHandler.addDeck("Pogs", pogs.items, pogs.altNames)


local slammers = {}
slammers.series = {	["Pog_Series1_Slammer_"]=28, ["Pog_Series2_Slammers"]=142}
slammers.items = {}
slammers.altNames = {}
for seriesID,numberOf in pairs(slammers.series) do
	for i=1, numberOf do
		local slammerID = seriesID..i
		slammers.altNames[slammerID] = "Slammers"
		table.insert(slammers.items, slammerID)
	end
end
deckActionHandler.addDeck("Slammers", slammers.items, slammers.altNames)


gamePieceAndBoardHandler.registerSpecial("Base.Pogs", {
	category = "GamePiece", onDraw = "onPogDraw", applyCards = "applyPogDetails",
	alternateStackRendering = {func="DrawTextureRoundFace", rgb = {0.57, 0.58, 0.59}}, -- sides=12
	actions = { examine=true, slamPogs=true }, textureSize = {125,125},
})

gamePieceAndBoardHandler.registerSpecial("Base.Slammers", {
	category = "GamePiece", onDraw = "onPogDraw", applyCards = "applySlammerDetails",
	alternateStackRendering = {func="DrawTextureRoundFace", depth = 1.2, rgb = {0.37, 0.38, 0.39}}, -- sides=12
	actions = { examine=true }, textureSize = {125,125},
})


function deckActionHandler.onPogDraw(deckItem, oldDeck)
	local current = deckItem:getModData()["gameNight_rotation"] or 0
	local angle = ZombRand(0,360)
	local state = (current+angle) % 360
	gamePieceAndBoardHandler.setModDataValue(deckItem, "gameNight_rotation", state)

	if deckItem ~= oldDeck then
		local deckSize, flippedStates = deckActionHandler.getDeckStates(deckItem)
		for i=1, #deckSize do deckItem:getModData()["gameNight_cardFlipped"][i] = (ZombRand(2)>0) end
	end
end


function applyItemDetails.applyFromPool(item, numberOf)
	numberOf = numberOf or 1
	local pool = deckActionHandler.deckCatalogues[item:getType()]
	local pieces = {}
	for i=1, numberOf do
		local ID = pool[(ZombRand(#pool)+1)]
		table.insert(pieces, ID)
	end
	item:getModData()["gameNight_cardDeck"] = pieces
	item:getModData()["gameNight_cardFlipped"] = {}
	for i=1, #pieces do item:getModData()["gameNight_cardFlipped"][i] = (ZombRand(2)>0) end
	return pieces
end


function applyItemDetails.applySlammerDetails(item)
	item:getModData()["gameNight_cardAltNames"] = nil
	if not item:getModData()["gameNight_cardDeck"] then applyItemDetails.applyFromPool(item, ZombRand(3)+1) end
end


function applyItemDetails.applyPogDetails(item)
	item:getModData()["gameNight_cardAltNames"] = nil
	if not item:getModData()["gameNight_cardDeck"] then

		local pieces = applyItemDetails.applyFromPool(item, ZombRand(10)+1)

		local slammerCount = ZombRand(math.floor(#pieces/3))+1
		local slammerPile = instanceItem("Base.Slammers")

		if slammerPile then
			applyItemDetails.applyFromPool(slammerPile, slammerCount)

			local container = item:getContainer()
			if container then container:AddItem(slammerPile) end

			local worldItem = item:getWorldItem()
			---@type IsoGridSquare
			local worldItemSq = worldItem and worldItem:getSquare()
			if worldItemSq then worldItemSq:AddWorldInventoryItem(slammerPile, 0, 0, 0) end

			gamePieceAndBoardHandler.refreshInventory(getPlayer())
		end
	end
end


---@param player IsoPlayer|IsoGameCharacter
function deckActionHandler.slamPogs_isValid(deckItem, player, n, x, y)
	local worldItem = deckItem:getWorldItem()
	if not worldItem then return false end

	local gameWindowSq = (gameNightWindow and gameNightWindow.instance and gameNightWindow.instance.square)
	if not gameWindowSq then return false end

	local slammer = player:getInventory():getItemFromType("Slammers")
	if not slammer then return false end

	local deck, flippedStates = deckActionHandler.getDeckStates(deckItem)
	if not deck or #deck <= 1 then return false end

	return (worldItem and gameWindowSq and slammer and deck and #deck>1) and true or false
end


function deckActionHandler.slamPogs(deckItem, player)
	local slammer = player and player:getInventory():getItemFromType("Slammers")
	local deck, flippedStates = deckActionHandler.getDeckStates(deckItem)

	for i = 1, #deck do
		local travelX = ZombRandFloat(0.25,0.75)
		local travelY = ZombRandFloat(0.25,0.75)
		deckActionHandler.dealCards(deckItem, player, 1, travelX, travelY)
	end

	local slammerX = ZombRandFloat(0.33,0.66)
	local slammerY = ZombRandFloat(0.33,0.66)
	deckActionHandler.dealCards(slammer, player, 1, slammerX, slammerY)
end