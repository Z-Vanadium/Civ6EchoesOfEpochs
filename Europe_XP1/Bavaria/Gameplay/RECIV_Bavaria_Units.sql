-- RECIV_Bavaria_Units
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,														Kind)
VALUES	('UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',						'KIND_UNIT'),
		('TRAIT_CIVILIZATION_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	'KIND_TRAIT'),
		('MODIFIER_JNR_PLAYER_DISTRICTS_ATTACH_MODIFIER',			'KIND_MODIFIER');
--------------------------------------------------------------

-- Traits
--------------------------------------------------------------
INSERT OR IGNORE INTO Traits
		(TraitType,													Name,											Description)
VALUES	('TRAIT_CIVILIZATION_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_NAME',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION');
--------------------------------------------------------------

-- CivilizationTraits
--------------------------------------------------------------
INSERT OR IGNORE INTO CivilizationTraits
		(CivilizationType,				TraitType)
VALUES	('CIVILIZATION_JNR_BAVARIA',	'TRAIT_CIVILIZATION_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE');
--------------------------------------------------------------

-- Units
--------------------------------------------------------------
INSERT INTO Units
		(UnitType,								PrereqCivic,			TraitType,												Name,											Description,											Cost,		Maintenance,	BaseSightRange,	BaseMoves,	Combat,	RangedCombat, Range, Domain, FormationClass, PromotionClass, PurchaseYield, AdvisorType)
SELECT	'UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	'CIVIC_NATIONALISM',	'TRAIT_CIVILIZATION_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_NAME',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION',	Cost-30,	Maintenance-1,	BaseSightRange,	BaseMoves,	Combat,	RangedCombat, Range, Domain, FormationClass, PromotionClass, PurchaseYield, AdvisorType
FROM	Units
WHERE	UnitType='UNIT_RANGER';

UPDATE Units SET Description='LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION_GOV'	WHERE UnitType='UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE' AND EXISTS (SELECT * FROM GameCapabilities WHERE GameCapability='CAPABILITY_WORLD_CONGRESS');
UPDATE Units SET Description='LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION_DIPLO'	WHERE UnitType='UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE' AND EXISTS (SELECT * FROM GameCapabilities WHERE GameCapability='CAPABILITY_WORLD_CONGRESS') AND EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_DIPLOMATIC_QUARTER');
--------------------------------------------------------------

-- UnitReplaces
--------------------------------------------------------------
INSERT OR IGNORE INTO UnitReplaces
		(CivUniqueUnitType,						ReplacesUnitType)
VALUES	('UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	'UNIT_RANGER');
--------------------------------------------------------------

-- UnitUpgrades
--------------------------------------------------------------
INSERT OR IGNORE INTO UnitUpgrades
		(Unit,									UpgradeUnit)
SELECT	'UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	UpgradeUnit
FROM	UnitUpgrades
WHERE	Unit='UNIT_RANGER';
--------------------------------------------------------------

-- UnitAiInfos
--------------------------------------------------------------
INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,								AiType)
SELECT	'UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_RANGER';
--------------------------------------------------------------

-- TypeTags
--------------------------------------------------------------
INSERT OR IGNORE INTO TypeTags
		(Type,									Tag)
SELECT	'UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	Tag
FROM	TypeTags
WHERE	Type='UNIT_RANGER';
--------------------------------------------------------------

-- Requirements
--------------------------------------------------------------
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('REQUIRES_UNIT_IS_GEBIRGSSCHUETZE_JNR',		'REQUIREMENT_UNIT_TYPE_MATCHES'),
		('REQUIRES_OWNER_PLOT_JNR',						'REQUIREMENT_PLOT_ADJACENT_TO_OWNER');

INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType)
SELECT	'REQUIRES_DISTRICT_IS_GOVERNMENT_PLAZA_JNR',	'REQUIREMENT_DISTRICT_TYPE_MATCHES'
FROM	Districts
WHERE	DistrictType='DISTRICT_GOVERNMENT';

INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType)
SELECT	'REQUIRES_DISTRICT_IS_DIPLOMATIC_QUARTER_JNR',	'REQUIREMENT_DISTRICT_TYPE_MATCHES'
FROM	Districts
WHERE	DistrictType='DISTRICT_DIPLOMATIC_QUARTER';
--------------------------------------------------------------

-- RequirementArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,			Value)
VALUES	('REQUIRES_UNIT_IS_GEBIRGSSCHUETZE_JNR',		'UnitType',		'UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE'),
		('REQUIRES_OWNER_PLOT_JNR',						'MinDistance',	0),
		('REQUIRES_OWNER_PLOT_JNR',						'MaxDistance',	0);

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,			Value)
SELECT	'REQUIRES_DISTRICT_IS_GOVERNMENT_PLAZA_JNR',	'DistrictType',	DistrictType
FROM	Districts
WHERE	DistrictType='DISTRICT_GOVERNMENT';

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,			Value)
SELECT	'REQUIRES_DISTRICT_IS_DIPLOMATIC_QUARTER_JNR',	'DistrictType',	DistrictType
FROM	Districts
WHERE	DistrictType='DISTRICT_DIPLOMATIC_QUARTER';
--------------------------------------------------------------

-- RequirementSets
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('UNIT_IS_GEBIRGSSCHUETZE_JNR',					'REQUIREMENTSET_TEST_ALL'),
		('UNIT_DISTRICT_IS_ENTERTAINMENT_COMPLEX_JNR',	'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
SELECT	'UNIT_DISTRICT_IS_GOVERNMENT_PLAZA_JNR',		'REQUIREMENTSET_TEST_ALL'
FROM	Districts
WHERE	DistrictType='DISTRICT_GOVERNMENT';

INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
SELECT	'UNIT_DISTRICT_IS_DIPLOMATIC_QUARTER_JNR',		'REQUIREMENTSET_TEST_ALL'
FROM	Districts
WHERE	DistrictType='DISTRICT_DIPLOMATIC_QUARTER';
--------------------------------------------------------------

-- RequirementSetRequirements
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('UNIT_IS_GEBIRGSSCHUETZE_JNR',					'REQUIRES_UNIT_IS_GEBIRGSSCHUETZE_JNR'),
		('UNIT_DISTRICT_IS_ENTERTAINMENT_COMPLEX_JNR',	'REQUIRES_DISTRICT_IS_ENTERTAINMENT_COMPLEX'),
		('UNIT_DISTRICT_IS_ENTERTAINMENT_COMPLEX_JNR',	'REQUIRES_OWNER_PLOT_JNR');

INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
SELECT	'UNIT_DISTRICT_IS_GOVERNMENT_PLAZA_JNR',		'REQUIRES_DISTRICT_IS_GOVERNMENT_PLAZA_JNR'
FROM	Districts
WHERE	DistrictType='DISTRICT_GOVERNMENT';

INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
SELECT	'UNIT_DISTRICT_IS_GOVERNMENT_PLAZA_JNR',		'REQUIRES_OWNER_PLOT_JNR'
FROM	Districts
WHERE	DistrictType='DISTRICT_GOVERNMENT';

INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
SELECT	'UNIT_DISTRICT_IS_DIPLOMATIC_QUARTER_JNR',		'REQUIRES_DISTRICT_IS_DIPLOMATIC_QUARTER_JNR'
FROM	Districts
WHERE	DistrictType='DISTRICT_DIPLOMATIC_QUARTER';

INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
SELECT	'UNIT_DISTRICT_IS_DIPLOMATIC_QUARTER_JNR',		'REQUIRES_OWNER_PLOT_JNR'
FROM	Districts
WHERE	DistrictType='DISTRICT_DIPLOMATIC_QUARTER';
--------------------------------------------------------------

-- DynamicModifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO DynamicModifiers
		(ModifierType,										CollectionType,					EffectType)
VALUES	('MODIFIER_JNR_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'COLLECTION_PLAYER_DISTRICTS',	'EFFECT_ATTACH_MODIFIER');
--------------------------------------------------------------

-- Modifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO Modifiers
		(ModifierId,										ModifierType,										OwnerRequirementSetId,			SubjectRequirementSetId)
VALUES	('GEBIRGSSCHUETZE_JNR_PROMOTION_CULTURE',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',	'UNIT_IS_GEBIRGSSCHUETZE_JNR',	'UNIT_DISTRICT_IS_ENTERTAINMENT_COMPLEX_JNR');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,										ModifierType,										OwnerRequirementSetId,			SubjectRequirementSetId)
SELECT	'GEBIRGSSCHUETZE_JNR_PROMOTION_FAVOR_GOV_ATTACH',	'MODIFIER_JNR_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'UNIT_IS_GEBIRGSSCHUETZE_JNR',	'UNIT_DISTRICT_IS_GOVERNMENT_PLAZA_JNR'
FROM	GameCapabilities
WHERE	GameCapability='CAPABILITY_WORLD_CONGRESS';

INSERT OR IGNORE INTO Modifiers
		(ModifierId,										ModifierType,										OwnerRequirementSetId,			SubjectRequirementSetId)
SELECT	'GEBIRGSSCHUETZE_JNR_PROMOTION_FAVOR_GOV',			'MODIFIER_PLAYER_ADJUST_EXTRA_FAVOR_PER_TURN',		NULL,							NULL
FROM	GameCapabilities
WHERE	GameCapability='CAPABILITY_WORLD_CONGRESS';

INSERT OR IGNORE INTO Modifiers
		(ModifierId,										ModifierType,										OwnerRequirementSetId,			SubjectRequirementSetId)
SELECT	'GEBIRGSSCHUETZE_JNR_PROMOTION_FAVOR_DIPLO_ATTACH',	'MODIFIER_JNR_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'UNIT_IS_GEBIRGSSCHUETZE_JNR',	'UNIT_DISTRICT_IS_DIPLOMATIC_QUARTER_JNR'
FROM	GameCapabilities
WHERE	GameCapability='CAPABILITY_WORLD_CONGRESS'
		AND EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_DIPLOMATIC_QUARTER');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,										ModifierType,										OwnerRequirementSetId,			SubjectRequirementSetId)
SELECT	'GEBIRGSSCHUETZE_JNR_PROMOTION_FAVOR_DIPLO',		'MODIFIER_PLAYER_ADJUST_EXTRA_FAVOR_PER_TURN',		NULL,							NULL
FROM	GameCapabilities
WHERE	GameCapability='CAPABILITY_WORLD_CONGRESS'
		AND EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_DIPLOMATIC_QUARTER');
--------------------------------------------------------------

-- ModifierArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,								Name,			Value)
VALUES	('GEBIRGSSCHUETZE_JNR_PROMOTION_CULTURE',	'YieldType',	'YIELD_CULTURE'),
		('GEBIRGSSCHUETZE_JNR_PROMOTION_CULTURE',	'Amount',		1);

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,								Name,			Value)
SELECT	ModifierId,									'ModifierId',	'GEBIRGSSCHUETZE_JNR_PROMOTION_FAVOR_GOV'
FROM	Modifiers
WHERE	ModifierId='GEBIRGSSCHUETZE_JNR_PROMOTION_FAVOR_GOV_ATTACH';

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,								Name,			Value)
SELECT	ModifierId,									'Amount',		1
FROM	Modifiers
WHERE	ModifierId='GEBIRGSSCHUETZE_JNR_PROMOTION_FAVOR_GOV';

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,								Name,			Value)
SELECT	ModifierId,									'ModifierId',	'GEBIRGSSCHUETZE_JNR_PROMOTION_FAVOR_DIPLO'
FROM	Modifiers
WHERE	ModifierId='GEBIRGSSCHUETZE_JNR_PROMOTION_FAVOR_DIPLO_ATTACH';

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,								Name,			Value)
SELECT	ModifierId,									'Amount',		1
FROM	Modifiers
WHERE	ModifierId='GEBIRGSSCHUETZE_JNR_PROMOTION_FAVOR_DIPLO';
--------------------------------------------------------------

-- UnitPromotionModifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO UnitPromotionModifiers
		(ModifierId,								UnitPromotionType)
SELECT	'GEBIRGSSCHUETZE_JNR_PROMOTION_CULTURE',	UnitPromotionType
FROM	UnitPromotions
WHERE	PromotionClass='PROMOTION_CLASS_RECON';

INSERT OR IGNORE INTO UnitPromotionModifiers
		(ModifierId,								UnitPromotionType)
SELECT	a.ModifierId,								b.UnitPromotionType
FROM	Modifiers a, UnitPromotions b
WHERE	a.ModifierId='GEBIRGSSCHUETZE_JNR_PROMOTION_FAVOR_GOV_ATTACH'
		AND b.PromotionClass='PROMOTION_CLASS_RECON';

INSERT OR IGNORE INTO UnitPromotionModifiers
		(ModifierId,								UnitPromotionType)
SELECT	a.ModifierId,								b.UnitPromotionType
FROM	Modifiers a, UnitPromotions b
WHERE	a.ModifierId='GEBIRGSSCHUETZE_JNR_PROMOTION_FAVOR_DIPLO_ATTACH'
		AND b.PromotionClass='PROMOTION_CLASS_RECON';
--------------------------------------------------------------