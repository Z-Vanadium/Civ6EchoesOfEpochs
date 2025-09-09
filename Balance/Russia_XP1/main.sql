-- main
-- Author: 10549
-- DateCreated: 8/23/2025 12:36:07 PM
--------------------------------------------------------------

DELETE FROM TraitModifiers WHERE TraitType='TRAIT_LEADER_GEDEMO_CATHERINE2';

---

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_BBGV_Catherina_city_center_food', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_BBGV_Catherina_city_center_food', 'REQ_BBGV_PLOT_HAS_CITY_CENTER');

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_BBGV_PLOT_HAS_CITY_CENTER', 'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES');

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_BBGV_PLOT_HAS_CITY_CENTER', 'DistrictType', 'DISTRICT_CITY_CENTER');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('BBGV_Catherina_city_center_food', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 0, 0, 0, NULL, 'REQSET_BBGV_Catherina_city_center_food');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('BBGV_Catherina_city_center_food', 'Amount', '1'), 
('BBGV_Catherina_city_center_food', 'YieldType', 'YIELD_FOOD');

---

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('BBGV_Catherina_tundra_resource_gold', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 0, 0, 0, NULL, 'REQSET_BBGV_Catherina_tundra_resource_gold');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('BBGV_Catherina_tundra_resource_gold', 'Amount', 1), 
('BBGV_Catherina_tundra_resource_gold', 'YieldType', 'YIELD_GOLD');

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_BBGV_Catherina_tundra_resource_gold', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_BBGV_Catherina_tundra_resource_gold', 'REQ_BBGV_PLOT_HAS_IMPROVEMENT'), 
('REQSET_BBGV_Catherina_tundra_resource_gold', 'REQ_BBGV_PLOT_HAS_RESOURCE');

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_BBGV_PLOT_HAS_IMPROVEMENT', 'REQUIREMENT_PLOT_HAS_ANY_IMPROVEMENT'), 
('REQ_BBGV_PLOT_HAS_RESOURCE', 'REQUIREMENT_PLOT_HAS_ANY_RESOURCE');

---

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
-- ('TRAIT_LEADER_GEDEMO_CATHERINE2', 'BBGV_Catherina_city_center_food'),
('TRAIT_LEADER_GEDEMO_CATHERINE2', 'BBGV_Catherina_tundra_resource_gold');


-- lavra +1 food
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_GEDEMO_CATHERINE2', 'VAN_CATHERINE2_LAVRA_FOOD');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_CATHERINE2_LAVRA_FOOD', 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 0, 0, 0, NULL, 'BBG_DISTRICT_IS_DISTRICT_LAVRA_REQSET');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_CATHERINE2_LAVRA_FOOD', 'Amount', '1'), 
('VAN_CATHERINE2_LAVRA_FOOD', 'YieldType', 'YIELD_FOOD');
