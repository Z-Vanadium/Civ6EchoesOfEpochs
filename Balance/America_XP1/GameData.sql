-- Leader XP1
-- no discount
DELETE FROM TraitModifiers
      WHERE TraitType = 'TRAIT_AGENDA_JFD_AMERICA_FIRST' AND
            ModifierId = 'JFD_AMERICA_FIRST_GAINING_CITIES_AND_LEADS_HAPPINESS';

-- same continent city +5% all yield
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_AGENDA_JFD_AMERICA_FIRST', 'VAN_TRUMP_SAME_CONTINENT_CITY_BONUS');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_TRUMP_SAME_CONTINENT_CITY_BONUS', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 0, 0, 0, NULL, 'VAN_CITY_IS_SAME_CONTINENT');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_TRUMP_SAME_CONTINENT_CITY_BONUS', 'Amount', '5, 5, 5, 5, 5, 5'), 
('VAN_TRUMP_SAME_CONTINENT_CITY_BONUS', 'YieldType', 'YIELD_PRODUCTION, YIELD_FOOD, YIELD_SCIENCE, YIELD_CULTURE, YIELD_GOLD, YIELD_FAITH');

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('VAN_CITY_IS_SAME_CONTINENT', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('VAN_CITY_IS_SAME_CONTINENT', 'CITY_IS_SAME_CONTINENT_REQUIREMENTS');

-- foreign continent city -8% all yield
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_AGENDA_JFD_AMERICA_FIRST', 'VAN_TRUMP_FOREIGN_CONTINENT_CITY_BONUS');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_TRUMP_FOREIGN_CONTINENT_CITY_BONUS', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 0, 0, 0, NULL, 'VAN_CITY_IS_FOREIGN_CONTINENT');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_TRUMP_FOREIGN_CONTINENT_CITY_BONUS', 'Amount', '-8, -8, -8, -8, -8, -8'), 
('VAN_TRUMP_FOREIGN_CONTINENT_CITY_BONUS', 'YieldType', 'YIELD_PRODUCTION, YIELD_FOOD, YIELD_SCIENCE, YIELD_CULTURE, YIELD_GOLD, YIELD_FAITH');

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('VAN_CITY_IS_FOREIGN_CONTINENT', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('VAN_CITY_IS_FOREIGN_CONTINENT', 'CITY_IS_OTHER_CONTINENT_REQUIREMENTS');


-- city harvest +20%
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_TRUMP_CITY_HARVEST_BONUS', 'MODIFIER_CITY_ADJUST_RESOURCE_HARVEST_BONUS', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_TRUMP_CITY_HARVEST_BONUS', 'Amount', '20');

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_AGENDA_JFD_AMERICA_FIRST', 'VAN_TRUMP_CITY_HARVEST_BONUS_GIVER');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_TRUMP_CITY_HARVEST_BONUS_GIVER', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_TRUMP_CITY_HARVEST_BONUS_GIVER', 'ModifierId', 'VAN_TRUMP_CITY_HARVEST_BONUS');

-- uu cs to 80
UPDATE Units SET Combat=80 WHERE UnitType='UNIT_JFD_SUPERCARRIER';