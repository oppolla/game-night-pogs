local applyItemDetails = require "gameNight - applyItemDetails"

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
for seriesID,numberOf in pairs(pogs.series) do for i=1, numberOf do table.insert(pogs.items, seriesID..i) end end
applyItemDetails.addDeck("Pogs", pogs.items)


local slammers = {}
slammers.series = {	["Pog_Series1_Slammer_"]=29, ["Pog_Series2_Slammers"]=142}
slammers.items = {}
for seriesID,numberOf in pairs(slammers.series) do for i=1, numberOf do table.insert(slammers.items, seriesID..i) end end
applyItemDetails.addDeck("Slammers", slammers.items)


local gamePieceAndBoardHandler = require "gameNight - gamePieceAndBoardHandler"

gamePieceAndBoardHandler.registerSpecial("Base.Pogs", { onDraw = "onPogDraw", })
gamePieceAndBoardHandler.registerSpecial("Base.Slammers", { onDraw = "onPogDraw", })


local deckActionHandler = require "gameNight - deckActionHandler"

function deckActionHandler.onPogDraw(deckItem)

	local current = deckItem:getModData()["gameNight_rotation"] or 0
	local angle = ZombRand(0,360)
	local state = (current+angle) % 360

	gamePieceAndBoardHandler.setModDataValue(deckItem, "gameNight_rotation", state)
end

-- Pog Slam

-- On slam
-- deal all cards in deck in random distance and direction around origin point of deck
-- flip cards

--local slam = context:addOptionOnTop(getText("IGUI_slamPog"), item, deckActionHandler.dealCards, playerObj)



--function gamePieceContext.addInventoryItemContext(playerID, context, items)
    --local playerObj = getSpecificPlayer(playerID)

    --for _, v in ipairs(items) do

        -----@type InventoryItem
        --local item = v

        --if not instanceof(v, "InventoryItem") then
       
            --item = v.items[1]
        --end

        --local deckStates, flippedStates = deckActionHandler.getDeckStates(item)
        --if deckStates then

            --local flip = context:addOptionOnTop(getText("IGUI_slamPogs"), item, deckActionHandler.slamPogs, playerObj)
            --flip.iconTexture = gamePieceContext.gameNightContextMenuIcon.flip
             
            --end
        --break
    --end
--end

function deckActionHandler.slamPogs(deckItem, player, n, x, y)
	local worldItem, container = deckItem:getWorldItem(), deckItem:getContainer()
	local z = worldItem and (worldItem:getWorldPosZ()-worldItem:getZ()) or 0

    ---@type IsoGridSquare
    local sq = (worldItem and worldItem:getSquare()) or (gameNightWindow and gameNightWindow.instance and gameNightWindow.instance.square)
	
    -- deckActionHandler._drawCards(n, deckItem, player, { sq=sq, offsets={x=x,y=y,z=z}, container=container })
	local deckSize = #deckActionHandler.getDeckStates(deckItem)
	for i = 1, deckSize do
		local travelX = ZombRand(0, 100) / 100
		local travelY = ZombRand(0, 100) / 100
		x = x or worldItem and (worldItem:getWorldPosX()-worldItem:getX() + travelX) or 0
		y = y or worldItem and (worldItem:getWorldPosY()-worldItem:getY() + travelY) or 0

		deckActionHandler._drawCards(1, deckItem, player, { sq=sq, offsets={x=x,y=y,z=z}, container=container })
	end
end