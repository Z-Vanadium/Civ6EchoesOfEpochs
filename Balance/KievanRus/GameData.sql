-- Civilization
-- no trade post, border and trade culture bonus
DELETE FROM TraitModifiers
      WHERE TraitType = 'TRAIT_CIVILIZATION_MER_KYIV_VARANGIANS_TO_GREEKS' AND
            ModifierId IN ('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RIVER_POST', 'MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RIVER_BORDERS', 'MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_CULTURE_DISTANT_TRADE');

-- trade gold to +1 gold/5 tiles
UPDATE ModifierArguments SET Value=0.2 WHERE ModifierId = 'MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_GOLD_DISTANT_TRADE' AND Name = 'Amount';

-- bias forest to t4
UPDATE StartBiasFeatures SET Tier = 4  WHERE FeatureType = 'FEATURE_FOREST' AND CivilizationType = 'CIVILIZATION_MER_KYIVAN_RUS';

-- no resource bias
DELETE FROM StartBiasResources
      WHERE ResourceType IN ('RESOURCE_FURS', 'RESOURCE_WHEAT') AND
            CivilizationType = 'CIVILIZATION_MER_KYIVAN_RUS';

-- bias deer t4
INSERT INTO StartBiasResources (Tier, ResourceType, CivilizationType) VALUES (4, 'RESOURCE_DEER', 'CIVILIZATION_MER_KYIVAN_RUS');

-- bias river to t2
UPDATE StartBiasRivers SET Tier=2 WHERE CivilizationType = 'CIVILIZATION_MER_KYIVAN_RUS';

-- no terra bias
DELETE FROM StartBiasTerrains
      WHERE TerrainType IN ('TERRAIN_PLAINS_HILLS', 'TERRAIN_PLAINS', 'TERRAIN_GRASS') AND
            CivilizationType = 'CIVILIZATION_MER_KYIVAN_RUS';

-- uu +5 cs to +3 cs
UPDATE ModifierArguments SET Value = 3 WHERE ModifierId = 'MODIFIER_MER_KYIV_DRUZHINA_ADJACENT' AND Name = 'Amount';

-- uu move to military tactics
UPDATE Units SET PrereqTech='TECH_MILITARY_TACTICS' WHERE UnitType = 'UNIT_MER_KYIV_DRUZHINA';

-- ud no culture
DELETE FROM DistrictModifiers
      WHERE DistrictType = 'DISTRICT_MER_KYIV_VECHE' AND
            ModifierId = 'MER_KYIV_VECHE_CULTURE';

-- ud base cost to 30
UPDATE Districts SET Cost=30 WHERE DistrictType = 'DISTRICT_MER_KYIV_VECHE';

-- Leader
-- ud no culture bomb
DELETE FROM TraitModifiers
      WHERE TraitType = 'TRAIT_LEADER_MER_KYIV_RUSSKAYA_PRAVDA' AND
            ModifierId = 'MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_CULTURE_BOMB';

-- no favor
DELETE FROM TraitModifiers
      WHERE TraitType = 'TRAIT_LEADER_MER_KYIV_RUSSKAYA_PRAVDA' AND
            ModifierId = 'MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_ECONOMIC_FAVOR';

-- alliance +2 cs remove
UPDATE ModifierArguments SET Value=0 WHERE ModifierId = 'MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH' AND Name = 'Amount';

-- ud +2 culture with PP
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_MER_KYIV_RUSSKAYA_PRAVDA', 'VAN_VECHE_CULTURE');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_VECHE_CULTURE', 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 0, 0, 0, 'BBG_UTILS_PLAYER_HAS_CIVIC_POLITICAL_PHILOSOPHY_REQSET', 'BBG_DISTRICT_IS_DISTRICT_MER_KYIV_VECHE_REQSET');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_VECHE_CULTURE', 'Amount', '2'), 
('VAN_VECHE_CULTURE', 'YieldType', 'YIELD_CULTURE');

-- ud +2 culture with medieval faires
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_MER_KYIV_RUSSKAYA_PRAVDA', 'VAN_VECHE_CULTURE_MEDIEVAL_FAIRES');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_VECHE_CULTURE_MEDIEVAL_FAIRES', 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 0, 0, 0, 'BBG_UTILS_PLAYER_HAS_CIVIC_MEDIEVAL_FAIRES_REQSET', 'BBG_DISTRICT_IS_DISTRICT_MER_KYIV_VECHE_REQSET');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_VECHE_CULTURE_MEDIEVAL_FAIRES', 'Amount', '2'), 
('VAN_VECHE_CULTURE_MEDIEVAL_FAIRES', 'YieldType', 'YIELD_CULTURE');