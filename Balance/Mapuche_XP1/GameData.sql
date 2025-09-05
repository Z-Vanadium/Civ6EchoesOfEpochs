-- Leader XP1
-- no emergency bonus
DELETE FROM EmergencyBuffs
      WHERE ModifierID IN ('LEU_ORELIE_APPEAL', 'LEU_ORELIE_APPEAL_GOVERNOR');

-- remove trait
DELETE FROM TraitModifiers
      WHERE TraitType = 'TRAIT_LEADER_LEU_ORELIE' AND
            ModifierId = 'LEU_ORELIE_FAVOR_OPEN_BORDERS_GIFT';

-- city with encampmemt let forest +1 appeal
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_LEU_ORELIE', 'MODIFIER_VAN_LEU_ENCAMPMENT_FOREST_APPEAL');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_VAN_LEU_ENCAMPMENT_FOREST_APPEAL', 'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER', 0, 0, 0, NULL, 'CITY_HAS_ENCAMPMENT');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_VAN_LEU_ENCAMPMENT_FOREST_APPEAL', 'Amount', '1'), 
('MODIFIER_VAN_LEU_ENCAMPMENT_FOREST_APPEAL', 'FeatureType', 'FEATURE_FOREST');