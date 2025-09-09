-- RECIV_Bavaria_Units_STUU
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,														Kind)
VALUES	('UNIT_JNR_BAVARIAN_PAPPENHEIMER',						'KIND_UNIT'),
		('TRAIT_CIVILIZATION_UNIT_JNR_BAVARIAN_PAPPENHEIMER',	'KIND_TRAIT');
--------------------------------------------------------------

-- Traits
--------------------------------------------------------------
INSERT OR IGNORE INTO Traits
		(TraitType,												Name,										Description)
VALUES	('TRAIT_CIVILIZATION_UNIT_JNR_BAVARIAN_PAPPENHEIMER',	'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_NAME',	'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_DESCRIPTION');
--------------------------------------------------------------

-- CivilizationTraits
--------------------------------------------------------------
INSERT OR IGNORE INTO CivilizationTraits
		(CivilizationType,				TraitType)
VALUES	('CIVILIZATION_JNR_BAVARIA',	'TRAIT_CIVILIZATION_UNIT_JNR_BAVARIAN_PAPPENHEIMER');
--------------------------------------------------------------

-- Units
--------------------------------------------------------------
INSERT INTO Units
		(UnitType,							PrereqTech,				TraitType,												Name,										Description,										Cost, Maintenance, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Domain, FormationClass, PromotionClass, PurchaseYield, AdvisorType, ZoneOfControl, MandatoryObsoleteTech, StrategicResource)
SELECT	'UNIT_JNR_BAVARIAN_PAPPENHEIMER',	'TECH_METAL_CASTING',	'TRAIT_CIVILIZATION_UNIT_JNR_BAVARIAN_PAPPENHEIMER',	'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_NAME',	'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_DESCRIPTION',	Cost, Maintenance, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Domain, FormationClass, PromotionClass, PurchaseYield, AdvisorType, ZoneOfControl, MandatoryObsoleteTech, StrategicResource
FROM	Units
WHERE	UnitType='UNIT_CUIRASSIER';

UPDATE Units SET Description='LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_DESCRIPTION_XP1' WHERE UnitType='UNIT_JNR_BAVARIAN_PAPPENHEIMER' AND EXISTS (SELECT * FROM DynamicModifiers WHERE ModifierType='MODIFIER_EMERGENCY_UNITS_GRANT_ABILITY');
--------------------------------------------------------------

-- UnitReplaces
--------------------------------------------------------------
INSERT OR IGNORE INTO UnitReplaces
		(CivUniqueUnitType,					ReplacesUnitType)
VALUES	('UNIT_JNR_BAVARIAN_PAPPENHEIMER',	'UNIT_CUIRASSIER');
--------------------------------------------------------------

-- UnitUpgrades
--------------------------------------------------------------
INSERT OR IGNORE INTO UnitUpgrades
		(Unit,								UpgradeUnit)
SELECT	'UNIT_JNR_BAVARIAN_PAPPENHEIMER',	UpgradeUnit
FROM	UnitUpgrades
WHERE	Unit='UNIT_CUIRASSIER';
--------------------------------------------------------------

-- UnitAiInfos
--------------------------------------------------------------
INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,							AiType)
SELECT	'UNIT_JNR_BAVARIAN_PAPPENHEIMER',	AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_CUIRASSIER';
--------------------------------------------------------------

-- TypeTags
--------------------------------------------------------------
INSERT OR IGNORE INTO TypeTags
		(Type,								Tag)
SELECT	'UNIT_JNR_BAVARIAN_PAPPENHEIMER',	Tag
FROM	TypeTags
WHERE	Type='UNIT_CUIRASSIER';

INSERT OR IGNORE INTO TypeTags
		(Type,								Tag)
VALUES	('UNIT_JNR_BAVARIAN_PAPPENHEIMER',	'CLASS_JNR_PAPPENHEIMER');
--------------------------------------------------------------

