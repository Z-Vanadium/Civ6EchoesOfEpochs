
function C15_GetValidTraitPlayers(sTrait)
    local tValid = {}
    for k, v in pairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.LeaderTraits() do
            if trait.LeaderType == leaderType and trait.TraitType == sTrait then 
                tValid[v] = true 
            end;
        end
        if not tValid[v] then
            local civType = PlayerConfigurations[v]:GetCivilizationTypeName()
            for trait in GameInfo.CivilizationTraits() do
                if trait.CivilizationType == civType and trait.TraitType == sTrait then 
                    tValid[v] = true 
                end;
            end
        end
    end
    return tValid
end


local tTraitPlayers = C15_GetValidTraitPlayers("TRAIT_LEADER_MER_NEVER_AN_UNJUST_WAR")


local bLevel = false -- My idea or your idea
local iLevelMod = 0 -- Tapers for either idea
local iCombatMod = 1

local tUnits = {}
if not bLevel then
	for row in GameInfo.Units() do
		tUnits[row.Index] = row.Combat
	end
end

local iDefXP = GameInfo.GlobalParameters["EXPERIENCE_NEEDED_FOR_NEXT_LEVEL_MULTIPLIER"].Value
function C15_CalcLevel(iXP)
		return math.floor((1.5 + math.sqrt(1.5^2 - 4 * 1.5 * -(iXP/iDefXP))) / 3)
end

function C15_FB_KarlUnitPromoted(playerID, unitID, promotionID)
	if tTraitPlayers[playerID] then
		local pPlayer = Players[playerID]
		local pPlayerTechs = pPlayer:GetTechs()
		local pPlayerUnits = pPlayer:GetUnits()
		local pUnit = pPlayerUnits:FindID(unitID)
		if bLevel then
			local pUnitExperience = pUnit:GetExperience()
			local iLevel = C15_CalcLevel(pUnitExperience:GetExperiencePoints())
			local iScience = pPlayerTechs:GetScienceYield() * iLevel * iLevelMod
			pPlayerTechs:ChangeCurrentResearchProgress(iScience)
			if pPlayer:IsHuman() and iScience > 0 then
				Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_SCIENCE]+{1_Sci} [ICON_Science][ENDCOLOR]", iScience), pUnit:GetX(), pUnit:GetY(), 0)
			end
		else
			local iScience = tUnits[pUnit:GetType()] * iCombatMod
			pPlayerTechs:ChangeCurrentResearchProgress(iScience)
			if pPlayer:IsHuman() and iScience > 0 then
				Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_SCIENCE]+{1_Sci} [ICON_Science][ENDCOLOR]", iScience), pUnit:GetX(), pUnit:GetY(), 0)
			end
		end
	end
end

Events.UnitPromoted.Add(C15_FB_KarlUnitPromoted)