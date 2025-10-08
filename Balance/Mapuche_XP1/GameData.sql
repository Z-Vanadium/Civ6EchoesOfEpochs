-- Leader XP1
-- no emergency bonus
DELETE FROM EmergencyBuffs
      WHERE ModifierID IN ('LEU_ORELIE_APPEAL', 'LEU_ORELIE_APPEAL_GOVERNOR');

-- remove trait
DELETE FROM TraitModifiers
      WHERE TraitType = 'TRAIT_LEADER_LEU_ORELIE' AND
            ModifierId = 'LEU_ORELIE_FAVOR_OPEN_BORDERS_GIFT';

-- -- city with encampmemt let forest +1 appeal
-- INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
-- ('TRAIT_LEADER_LEU_ORELIE', 'MODIFIER_VAN_LEU_ENCAMPMENT_FOREST_APPEAL');

-- INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
-- ('MODIFIER_VAN_LEU_ENCAMPMENT_FOREST_APPEAL', 'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER', 0, 0, 0, NULL, 'CITY_HAS_ENCAMPMENT');

-- INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
-- ('MODIFIER_VAN_LEU_ENCAMPMENT_FOREST_APPEAL', 'Amount', '1'), 
-- ('MODIFIER_VAN_LEU_ENCAMPMENT_FOREST_APPEAL', 'FeatureType', 'FEATURE_FOREST');

-- +1 appeal with civic PP
-- INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
-- ('TRAIT_LEADER_LEU_ORELIE', 'VAN_ORELIE_CITIES_APPEAL');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_ORELIE_CITIES_APPEAL', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_APPEAL', 0, 0, 0, 'BBG_UTILS_PLAYER_HAS_CIVIC_POLITICAL_PHILOSOPHY_REQSET', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_ORELIE_CITIES_APPEAL', 'Amount', '1');

-- ui +1 faith
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_LEU_ORELIE', 'VAN_ORELIE_UI_CULTURE_GIVER');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_ORELIE_UI_CULTURE_GIVER', 'MODIFIER_ALL_CITIES_ATTACH_MODIFIER', 0, 0, 0, NULL, NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_ORELIE_UI_CULTURE_GIVER', 'ModifierId', 'VAN_ORELIE_UI_CULTURE');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_ORELIE_UI_CULTURE', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 0, 0, 0, NULL, 'REQSET_VAN_PLOT_HAS_IMPROVEMENT_CHEMAMULL');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_ORELIE_UI_CULTURE', 'Amount', '1'), 
('VAN_ORELIE_UI_CULTURE', 'YieldType', 'YIELD_FAITH');

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_VAN_PLOT_HAS_IMPROVEMENT_CHEMAMULL', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_VAN_PLOT_HAS_IMPROVEMENT_CHEMAMULL', 'REQ_VAN_PLOT_HAS_IMPROVEMENT_CHEMAMULL');

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_VAN_PLOT_HAS_IMPROVEMENT_CHEMAMULL', 'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_VAN_PLOT_HAS_IMPROVEMENT_CHEMAMULL', 'ImprovementType', 'IMPROVEMENT_CHEMAMULL');

-- +5 appeal ui +1 food
INSERT INTO ImprovementModifiers (ImprovementType, ModifierId) VALUES 
('IMPROVEMENT_CHEMAMULL', 'VAN_ORELIE_UI_FOOD');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_ORELIE_UI_FOOD', 'MODIFIER_SINGLE_PLOT_ADJUST_PLOT_YIELDS', 0, 0, 0, 'BBG_PLAYER_IS_LEADER_LEU_ORELIE_REQSET', 'PLOT_BREATHTAKING_APPEAL');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_ORELIE_UI_FOOD', 'Amount', '1'), 
('VAN_ORELIE_UI_FOOD', 'YieldType', 'YIELD_FOOD');

-- Civilization
-- move combat bonus and loyalty to leader
DELETE FROM TraitModifiers
      WHERE ModifierId IN ('TRAIT_TOQUI_COMBAT_BONUS_ABILITY_VS_GOLDEN_AGE_CIV');

INSERT INTO TraitModifiers VALUES ('TRAIT_LEADER_LAUTARO_ABILITY', 'TRAIT_TOQUI_COMBAT_BONUS_ABILITY_VS_GOLDEN_AGE_CIV');
