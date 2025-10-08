-----------------------------------------------
-- AUSTRIA FUNCTION
-- Effect: Get Great Musician, Writer, and Artist points when a city-state you're suzerain of gains a tile.
-- Author: SeelingCat
-----------------------------------------------

include("InstanceManager.lua");
include("SupportFunctions.lua");

-----------------------------------------------
-- FUNCTION C15_GetValidTraitPlayersNew
-- Credits: Chrisy15
-----------------------------------------------

function C15_GetValidTraitPlayersNew(sTrait)
end

local sTrait = "TRAIT_CIVILIZATION_MER_CROWNLANDS"
local tTraitPlayers = C15_GetValidTraitPlayersNew(sTrait)

-----------------------------------------------
-- FUNCTION SC_C15_GetIfCityState
-- Based on above function by Chrisy15
-----------------------------------------------

function SC_C15_GetIfCityState(sSearchParameter)
end

local sSearchParameter = "CIVILIZATION_LEVEL_CITY_STATE"
local tCityStateChecker = SC_C15_GetIfCityState(sSearchParameter)

----------------------------------------------
local iMusician = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_MUSICIAN"].Index
local iArtist = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_ARTIST"].Index
local iWriter = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_WRITER"].Index


function SC_Austria_Suzerain_Tile_Expand_Bonus(owner, cityID)
end



















-- Events.CityTileOwnershipChanged.Add(SC_Austria_Suzerain_Tile_Expand_Bonus)