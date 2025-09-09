-- Civilization
-- canel no bonus
DELETE FROM TraitModifiers
      WHERE ModifierId IN ('MODIFIER_MER_BALTIC_SEA_DOMINION_CANAL_GOLD', 'MODIFIER_MER_BALTIC_SEA_DOMINION_CANAL_PRODUCTION');

-- sea resource bonus dalay to civic exploration
UPDATE Modifiers SET OwnerRequirementSetId='BBG_UTILS_PLAYER_HAS_CIVIC_EXPLORATION_REQSET' WHERE ModifierId IN ('MODIFIER_MER_BALTIC_SEA_DOMINION_SEA_RESOURCE_PRODUCTION', 'MODIFIER_MER_BALTIC_SEA_DOMINION_SEA_RESOURCE_GOLD');

-- uu cannot build road
DELETE FROM Route_ValidBuildUnits WHERE UnitType = 'UNIT_MER_FODFOLK';

-- uu cost to 360, unlock with tech scientific theory
UPDATE Units SET Cost=360, PrereqTech='TECH_SCIENTIFIC_THEORY' WHERE UnitType = 'UNIT_MER_FODFOLK';

-- uu cs bonus to +3
UPDATE ModifierArguments SET Value = '3' WHERE Name = 'Amount' AND ModifierId = 'GARRISON_BONUS_DISTRICTS';

-- uu need 10 niter to train
INSERT INTO Units_XP2 (ResourceMaintenanceType, ResourceCost, ResourceMaintenanceAmount, UnitType)
VALUES (NULL, 10, 0, 'UNIT_MER_FODFOLK');

-- ub yield to +1 food
UPDATE Building_YieldChanges SET YieldType = 'YIELD_FOOD', YieldChange = '1'  WHERE BuildingType = 'BUILDING_MER_TOJHUS';

-- ub no defense
UPDATE Buildings SET OuterDefenseHitPoints=NULL, OuterDefenseStrength=0, RegionalRange=0 WHERE BuildingType = 'BUILDING_MER_TOJHUS';

-- ub no discount, stockpile
DELETE FROM BuildingModifiers
      WHERE BuildingType = 'BUILDING_MER_TOJHUS' AND
            ModifierId IN ('TOJHUS_BUILDING_DISCOUNT', 'TOJHUS_BUILDING_STOCKPILE');

-- ccb change of shipyard
INSERT INTO BuildingModifiers (ModifierId, BuildingType)
VALUES ('BBG_SHIPYARD_FISHERY_PRODUCTION', 'BUILDING_MER_TOJHUS'),
    ('COAL_FROM_SHIPYARD_BBG','BUILDING_MER_TOJHUS');

-- ub +1 trade capa with CH
INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES 
('BUILDING_MER_TOJHUS', 'VAN_TOJHUS_TRADE_CAPA');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_TOJHUS_TRADE_CAPA', 'MODIFIER_PLAYER_DISTRICTS_ADJUST_TRADE_ROUTE_CAPACITY', 0, 0, 0, NULL, 'DISTRICT_IS_COMMERCIAL_HUB');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_TOJHUS_TRADE_CAPA', 'Amount', '1');


