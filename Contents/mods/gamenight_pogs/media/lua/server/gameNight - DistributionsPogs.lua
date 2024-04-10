require "Items/SuburbsDistributions"

local gameNightDistro = require "gameNight - Distributions"

gameNightDistro.proceduralDistGameNight.itemsToAdd["Pogs"] = {
    perDistFactor = {
        ["Gifts"]=0,
        ["GigamartToys"]=0,
        ["HolidayStuff"]=0,
        ["SchoolLockers"] = 1.5,
        ["ClassroomDesk"] = 1.5,
    }
}

gameNightDistro.proceduralDistGameNight.itemsToAdd["Slammers"] = {
    chanceFactor = 0.5,
    perDistFactor = {
        ["Gifts"]=0,
        ["GigamartToys"]=0,
        ["HolidayStuff"]=0,
        ["SchoolLockers"] = 1.5,
        ["ClassroomDesk"] = 1.5,
    }
}