local applyItemDetails = require "gameNight - applyItemDetails"

local pogs = {
	"LimitedEdition1",
	"LimitedEdition2",
	"LimitedEdition3",
	"LimitedEdition4",
	"LimitedEdition5",
	"LimitedEdition6",
	"LimitedEdition7",
	"LimitedEdition8",
	"LimitedEdition9",
	"LimitedEdition10",
	"LimitedEdition11",
	"LimitedEdition12",
	"LimitedEdition13",
	"LimitedEdition14",
	"LimitedEdition15",
	"LimitedEdition16",
	"LimitedEdition17",
	"LimitedEdition18",
	"LimitedEdition19",
	"LimitedEdition20",
	"LimitedEdition21",
	"LimitedEdition22",
	"LimitedEdition23",
	"LimitedEdition24",
	"LimitedEdition25",
	"LimitedEdition26",
	"LimitedEdition27",
	"LimitedEdition28",
	"LimitedEdition29",
	"LimitedEdition30",
	"Pog_BirdsEye_1",
	"Pog_BirdsEye_2",
	"Pog_BirdsEye_3",
	"Pog_BirdsEye_4",
	"Pog_BirdsEye_5",
	"Pog_BirdsEye_6",
	"Pog_BirdsEye_7",
	"Pog_BirdsEye_8",
	"Pog_BirdsEye_9",
	"Pog_BirdsEye_10",
	"Pog_BirdsEye_11",
	"Pog_BirdsEye_12",
	"Pog_Christmas_1",
	"Pog_Christmas_2",
	"Pog_Christmas_3",
	"Pog_Christmas_4",
	"Pog_Christmas_5",
	"Pog_Christmas_6",
	"Pog_Christmas_7",
	"Pog_Christmas_8",
	"Pog_Christmas_9",
	"Pog_Christmas_10",
	"Pog_Christmas_11",
	"Pog_Christmas_12",
	"Pog_Classics_1",
	"Pog_Classics_2",
	"Pog_Classics_3",
	"Pog_Classics_4",
	"Pog_Classics_5",
	"Pog_Classics_6",
	"Pog_Classics_7",
	"Pog_Classics_8",
	"Pog_Classics_9",
	"Pog_Classics_10",
	"Pog_Classics_11",
	"Pog_Classics_12",
	"Pog_Classics_13",
	"Pog_Classics_14",
	"Pog_Classics_15",
	"Pog_Classics_16",
	"Pog_Classics_17",
	"Pog_Classics_18",
	"Pog_Classics_19",
	"Pog_Classics_20",
	"Pog_Classics_21",
	"Pog_Classics_22",
	"Pog_Classics_23",
	"Pog_Classics_24",
	"Pog_Classics_25",
	"Pog_Classics_26",
	"Pog_Classics_27",
	"Pog_Classics_28",
	"Pog_Classics_29",
	"Pog_Classics_30",
	"Pog_Classics_31",
	"Pog_Classics_32",
	"Pog_Classics_33",
	"Pog_Classics_34",
	"Pog_Classics_35",
	"Pog_Classics_36",
	"Pog_Series1_1",
	"Pog_Series1_2",
	"Pog_Series1_3",
	"Pog_Series1_4",
	"Pog_Series1_5",
	"Pog_Series1_6",
	"Pog_Series1_7",
	"Pog_Series1_8",
	"Pog_Series1_9",
	"Pog_Series1_10",
	"Pog_Series1_11",
	"Pog_Series1_12",
	"Pog_Series1_13",
	"Pog_Series1_14",
	"Pog_Series1_15",
	"Pog_Series1_16",
	"Pog_Series1_17",
	"Pog_Series1_18",
	"Pog_Series1_19",
	"Pog_Series1_20",
	"Pog_Series1_21",
	"Pog_Series1_22",
	"Pog_Series1_23",
	"Pog_Series1_24",
	"Pog_Series1_25",
	"Pog_Series1_26",
	"Pog_Series1_27",
	"Pog_Series1_28",
	"Pog_Series1_29",
	"Pog_Series1_30",
	"Pog_Series1_31",
	"Pog_Series1_32",
	"Pog_Series1_33",
	"Pog_Series1_34",
	"Pog_Series1_35",
	"Pog_Series1_36",
	"Pog_Series1_37",
	"Pog_Series1_38",
	"Pog_Series1_39",
	"Pog_Series1_40",
	"Pog_Series1_41",
	"Pog_Series1_42",
	"Pog_Series1_43",
	"Pog_Series1_44",
	"Pog_Series1_45",
	"Pog_Series1_46",
	"Pog_Series1_47",
	"Pog_Series1_48",
	"Pog_Series1_49",
	"Pog_Series1_50",
	"Pog_Series1_51",
	"Pog_Series1_52",
	"Pog_Series1_53",
	"Pog_Series1_54",
	"Pog_Series1_55",
	"Pog_Series1_56",
	"Pog_Series1_57",
	"Pog_Series1_58",
	"Pog_Series1_59",
	"Pog_Series1_60",
	"Pog_Series1_61",
	"Pog_Series1_62",
	"Pog_Series1_63",
	"Pog_Series1_64",
	"Pog_Series1_65",
	"Pog_Series1_66",
	"Pog_Series1_67",
	"Pog_Series1_68",
	"Pog_Series1_69",
	"Pog_Series1_70",
	"Pog_Series1_71",
	"Pog_Series1_72",
	"Pog_Series1_73",
	"Pog_Series1_74",
	"Pog_Series1_75",
	"Pog_Series1_76",
	"Pog_Series1_77",
	"Pog_Series1_78",
	"Pog_Series1_79",
	"Pog_Series1_80",
	"Pog_Series1_81",
	"Pog_Series1_82",
	"Pog_Series1_83",
	"Pog_Series1_84",
	"Pog_Series1_85",
	"Pog_Series1_86",
	"Pog_Series1_87",
	"Pog_Series1_88",
	"Pog_Series1_89",
	"Pog_Series1_90",
	"Pog_Series1_91",
	"Pog_Series1_92",
	"Pog_Series1_93",
	"Pog_Series1_94",
	"Pog_Series1_95",
	"Pog_Series1_96",
	"Pog_Series1_97",
	"Pog_Series1_98",
	"Pog_Series1_99",
	"Pog_Series1_100",
	"Pog_Series1_101",
	"Pog_Series1_102",
	"Pog_Series1_103",
	"Pog_Series1_104",
	"Pog_Series1_105",
	"Pog_Series1_106",
	"Pog_Series1_107",
	"Pog_Series1_108",
	"Pog_Series1_109",
	"Pog_Series1_110",
	"Pog_Series1_111",
	"Pog_Series1_112",
	"Pog_Series1_113",
	"Pog_Series1_114",
	"Pog_Series1_115",
	"Pog_Series1_116",
	"Pog_Series1_117",
	"Pog_Series1_118",
	"Pog_Series1_119",
	"Pog_Series1_120",
	"Pog_Series1_121",
	"Pog_Series1_122",
	"Pog_Series1_123",
	"Pog_Series1_124",
	"Pog_Series1_125",
	"Pog_Series1_126",
	"Pog_Series1_127",
	"Pog_Series1_128",
	"Pog_Series1_129",
	"Pog_Series1_130",
	"Pog_Series1_131",
	"Pog_Series1_132",
	"Pog_Series1_133",
	"Pog_Series1_134",
	"Pog_Series1_135",
	"Pog_Series1_136",
	"Pog_Series1_137",
	"Pog_Series1_138",
	"Pog_Series2_1",
	"Pog_Series2_2",
	"Pog_Series2_3",
	"Pog_Series2_4",
	"Pog_Series2_5",
	"Pog_Series2_6",
	"Pog_Series2_7",
	"Pog_Series2_8",
	"Pog_Series2_9",
	"Pog_Series2_10",
	"Pog_Series2_11",
	"Pog_Series2_12",
	"Pog_Series2_13",
	"Pog_Series2_14",
	"Pog_Series2_15",
	"Pog_Series2_16",
	"Pog_Series2_17",
	"Pog_Series2_18",
	"Pog_Series2_19",
	"Pog_Series2_20",
	"Pog_Series2_21",
	"Pog_Series2_22",
	"Pog_Series2_23",
	"Pog_Series2_24",
	"Pog_Series2_25",
	"Pog_Series2_26",
	"Pog_Series2_27",
	"Pog_Series2_28",
	"Pog_Series2_29",
	"Pog_Series2_30",
	"Pog_Series2_31",
	"Pog_Series2_32",
	"Pog_Series2_33",
	"Pog_Series2_34",
	"Pog_Series2_35",
	"Pog_Series2_36",
	"Pog_Series2_37",
	"Pog_Series2_38",
	"Pog_Series2_39",
	"Pog_Series2_40",
	"Pog_Series2_41",
	"Pog_Series2_42",
	"Pog_Series2_43",
	"Pog_Series2_44",
	"Pog_Series2_45",
	"Pog_Series2_46",
	"Pog_Series2_47",
	"Pog_Series2_48",
	"Pog_Series2_49",
	"Pog_Series2_50",
	"Pog_Series2_51",
	"Pog_Series2_52",
	"Pog_Series2_53",
	"Pog_Series2_54",
	"Pog_Series2_55",
	"Pog_Series2_56",
	"Pog_Series2_57",
	"Pog_Series2_58",
	"Pog_Series2_59",
	"Pog_Series2_60",
	"Pog_Series2_61",
	"Pog_Series2_62",
	"Pog_Series2_63",
	"Pog_Series2_64",
	"Pog_Series2_65",
	"Pog_Series2_66",
	"Pog_Series2_67",
	"Pog_Series2_68",
	"Pog_Series2_69",
	"Pog_Series2_70",
	"Pog_Series2_71",
	"Pog_Series2_72",
	"Pog_Series2_73",
	"Pog_TheGame_1",
	"Pog_TheGame_2",
	"Pog_TheGame_3",
	"Pog_TheGame_4",
	"Pog_TheGame_5",
	"Pog_TheGame_6",
	"Pog_TheGame_7",
	"Pog_TheGame_8",
	"Pog_TheGame_9",
	"Pog_TheGame_10",
	"Pog_TheGame_11",
	"Pog_TheGame_12",
	"Pog_TheGame_13",
	"Pog_TheGame_14",
	"Pog_TheGame_15",
	"Pog_TheGame_16",
	"Pog_TheGame_17",
	"Pog_TheGame_18",
	"Pog_TheGame_19",
	"Pog_TheGame_20",
	"Pog_TheGame_21",
	"Pog_TheGame_22",
	"Pog_TheGame_23",
	"Pog_TheGame_24",
	"Pog_TheGame_25",
	"Pog_TheGame_26",
	"Pog_TheGame_27",
	"Pog_TheGame_28",
	"Pog_TheGame_29",
	"Pog_TheGame_30",
	"Pog_WorldTour_1",
	"Pog_WorldTour_2",
	"Pog_WorldTour_3",
	"Pog_WorldTour_4",
	"Pog_WorldTour_5",
	"Pog_WorldTour_6",
	"Pog_WorldTour_7",
	"Pog_WorldTour_8",
	"Pog_WorldTour_9",
	"Pog_WorldTour_10",
	"Pog_WorldTour_11",
	"Pog_WorldTour_12",
	"Pog_WorldTour_13",
	"Pog_WorldTour_14",
	"Pog_WorldTour_15",
	"Pog_WorldTour_16",
	"Pog_WorldTour_17",
	"Pog_WorldTour_18",
	"Pog_WorldTour_19",
	"Pog_WorldTour_20",
	"Pog_WorldTour_21",
	"Pog_WorldTour_22",
	"Pog_WorldTour_23",
	"Pog_WorldTour_24",
	"Pog_WorldTour_25",
	"Pog_WorldTour_26",
	"Pog_WorldTour_27",
	"Pog_WorldTour_28",
	"Pog_WorldTour_29",
	"Pog_WorldTour_30",
}

applyItemDetails.addDeck("Pogs", pogs)

local slammers = {
	"Pog_Series1_Slammer_1",
	"Pog_Series1_Slammer_2",
	"Pog_Series1_Slammer_3",
	"Pog_Series1_Slammer_4",
	"Pog_Series1_Slammer_5",
	"Pog_Series1_Slammer_6",
	"Pog_Series1_Slammer_7",
	"Pog_Series1_Slammer_10",
	"Pog_Series1_Slammer_11",
	"Pog_Series1_Slammer_12",
	"Pog_Series1_Slammer_13",
	"Pog_Series1_Slammer_14",
	"Pog_Series1_Slammer_15",
	"Pog_Series1_Slammer_16",
	"Pog_Series1_Slammer_17",
	"Pog_Series1_Slammer_18",
	"Pog_Series1_Slammer_19",
	"Pog_Series1_Slammer_20",
	"Pog_Series1_Slammer_21",
	"Pog_Series1_Slammer_22",
	"Pog_Series1_Slammer_23",
	"Pog_Series1_Slammer_24",
	"Pog_Series1_Slammer_25",
	"Pog_Series1_Slammer_26",
	"Pog_Series1_Slammer_27",
	"Pog_Series1_Slammer_29",
	"Pog_Series2_Slammers1",
	"Pog_Series2_Slammers2",
	"Pog_Series2_Slammers3",
	"Pog_Series2_Slammers4",
	"Pog_Series2_Slammers5",
	"Pog_Series2_Slammers6",
	"Pog_Series2_Slammers7",
	"Pog_Series2_Slammers8",
	"Pog_Series2_Slammers9",
	"Pog_Series2_Slammers10",
	"Pog_Series2_Slammers11",
	"Pog_Series2_Slammers12",
	"Pog_Series2_Slammers13",
	"Pog_Series2_Slammers14",
	"Pog_Series2_Slammers15",
	"Pog_Series2_Slammers16",
	"Pog_Series2_Slammers17",
	"Pog_Series2_Slammers18",
	"Pog_Series2_Slammers19",
	"Pog_Series2_Slammers20",
	"Pog_Series2_Slammers21",
	"Pog_Series2_Slammers22",
	"Pog_Series2_Slammers23",
	"Pog_Series2_Slammers24",
	"Pog_Series2_Slammers25",
	"Pog_Series2_Slammers26",
	"Pog_Series2_Slammers27",
	"Pog_Series2_Slammers28",
	"Pog_Series2_Slammers29",
	"Pog_Series2_Slammers30",
	"Pog_Series2_Slammers31",
	"Pog_Series2_Slammers32",
	"Pog_Series2_Slammers33",
	"Pog_Series2_Slammers34",
	"Pog_Series2_Slammers35",
	"Pog_Series2_Slammers36",
	"Pog_Series2_Slammers37",
	"Pog_Series2_Slammers38",
	"Pog_Series2_Slammers39",
	"Pog_Series2_Slammers40",
	"Pog_Series2_Slammers41",
	"Pog_Series2_Slammers42",
	"Pog_Series2_Slammers43",
	"Pog_Series2_Slammers44",
	"Pog_Series2_Slammers45",
	"Pog_Series2_Slammers46",
	"Pog_Series2_Slammers47",
	"Pog_Series2_Slammers48",
	"Pog_Series2_Slammers49",
	"Pog_Series2_Slammers50",
	"Pog_Series2_Slammers51",
	"Pog_Series2_Slammers52",
	"Pog_Series2_Slammers53",
	"Pog_Series2_Slammers54",
	"Pog_Series2_Slammers55",
	"Pog_Series2_Slammers56",
	"Pog_Series2_Slammers57",
	"Pog_Series2_Slammers58",
	"Pog_Series2_Slammers59",
	"Pog_Series2_Slammers60",
	"Pog_Series2_Slammers61",
	"Pog_Series2_Slammers62",
	"Pog_Series2_Slammers63",
	"Pog_Series2_Slammers64",
	"Pog_Series2_Slammers65",
	"Pog_Series2_Slammers66",
	"Pog_Series2_Slammers67",
	"Pog_Series2_Slammers68",
	"Pog_Series2_Slammers69",
	"Pog_Series2_Slammers70",
	"Pog_Series2_Slammers71",
	"Pog_Series2_Slammers72",
	"Pog_Series2_Slammers73",
	"Pog_Series2_Slammers74",
	"Pog_Series2_Slammers75",
	"Pog_Series2_Slammers76",
	"Pog_Series2_Slammers77",
	"Pog_Series2_Slammers78",
	"Pog_Series2_Slammers79",
	"Pog_Series2_Slammers80",
	"Pog_Series2_Slammers81",
	"Pog_Series2_Slammers82",
	"Pog_Series2_Slammers83",
	"Pog_Series2_Slammers84",
	"Pog_Series2_Slammers85",
	"Pog_Series2_Slammers86",
	"Pog_Series2_Slammers87",
	"Pog_Series2_Slammers88",
	"Pog_Series2_Slammers89",
	"Pog_Series2_Slammers90",
	"Pog_Series2_Slammers91",
	"Pog_Series2_Slammers92",
	"Pog_Series2_Slammers93",
	"Pog_Series2_Slammers94",
	"Pog_Series2_Slammers95",
	"Pog_Series2_Slammers96",
	"Pog_Series2_Slammers97",
	"Pog_Series2_Slammers98",
	"Pog_Series2_Slammers99",
	"Pog_Series2_Slammers100",
	"Pog_Series2_Slammers101",
	"Pog_Series2_Slammers102",
	"Pog_Series2_Slammers103",
	"Pog_Series2_Slammers104",
	"Pog_Series2_Slammers105",
	"Pog_Series2_Slammers106",
	"Pog_Series2_Slammers107",
	"Pog_Series2_Slammers108",
	"Pog_Series2_Slammers109",
	"Pog_Series2_Slammers110",
	"Pog_Series2_Slammers111",
	"Pog_Series2_Slammers112",
	"Pog_Series2_Slammers113",
	"Pog_Series2_Slammers114",
	"Pog_Series2_Slammers115",
	"Pog_Series2_Slammers116",
	"Pog_Series2_Slammers117",
	"Pog_Series2_Slammers118",
	"Pog_Series2_Slammers119",
	"Pog_Series2_Slammers120",
	"Pog_Series2_Slammers121",
	"Pog_Series2_Slammers122",
	"Pog_Series2_Slammers123",
	"Pog_Series2_Slammers124",
	"Pog_Series2_Slammers125",
	"Pog_Series2_Slammers126",
	"Pog_Series2_Slammers127",
	"Pog_Series2_Slammers128",
	"Pog_Series2_Slammers129",
	"Pog_Series2_Slammers130",
	"Pog_Series2_Slammers131",
	"Pog_Series2_Slammers132",
	"Pog_Series2_Slammers133",
	"Pog_Series2_Slammers134",
	"Pog_Series2_Slammers135",
	"Pog_Series2_Slammers136",
	"Pog_Series2_Slammers137",
	"Pog_Series2_Slammers138",
	"Pog_Series2_Slammers139",
	"Pog_Series2_Slammers140",
	"Pog_Series2_Slammers141",
	"Pog_Series2_Slammers142",

}

applyItemDetails.addDeck("Slammers", slammers)

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