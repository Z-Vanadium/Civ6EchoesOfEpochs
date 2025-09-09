-- RECIV_Bavaria_Districts
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,														Kind)
VALUES	('DISTRICT_JNR_DULT',										'KIND_DISTRICT'),
		('TRAIT_CIVILIZATION_DISTRICT_JNR_DULT',					'KIND_TRAIT'),
		('MODIFIER_JNR_CITY_DISTRICTS_ADJUST_EXTRA_ENTERTAINMENT',	'KIND_MODIFIER');
--------------------------------------------------------------

-- Traits
--------------------------------------------------------------
INSERT OR IGNORE INTO Traits
		(TraitType,									Name,							Description)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_JNR_DULT',	'LOC_DISTRICT_JNR_DULT_NAME',	'LOC_DISTRICT_JNR_DULT_DESCRIPTION');
--------------------------------------------------------------

-- CivilizationTraits
--------------------------------------------------------------
INSERT OR IGNORE INTO CivilizationTraits
		(CivilizationType,				TraitType)
VALUES	('CIVILIZATION_JNR_BAVARIA',	'TRAIT_CIVILIZATION_DISTRICT_JNR_DULT');
--------------------------------------------------------------

-- Districts
--------------------------------------------------------------
INSERT INTO Districts
		(DistrictType,			PrereqCivic, TraitType,									Name,							Description,							Entertainment,	Appeal,	Cost, CostProgressionModel, CostProgressionParam1,	Maintenance, RequiresPlacement, RequiresPopulation, Aqueduct, NoAdjacentCity, InternalOnly, CaptureRemovesBuildings, CaptureRemovesCityDefenses, MilitaryDomain, CityStrengthModifier, PlunderType, PlunderAmount, AdvisorType)
SELECT	'DISTRICT_JNR_DULT',	PrereqCivic, 'TRAIT_CIVILIZATION_DISTRICT_JNR_DULT',	'LOC_DISTRICT_JNR_DULT_NAME',	'LOC_DISTRICT_JNR_DULT_DESCRIPTION',	2,				Appeal,	Cost, CostProgressionModel, CostProgressionParam1,	Maintenance, RequiresPlacement, RequiresPopulation, Aqueduct, NoAdjacentCity, InternalOnly, CaptureRemovesBuildings, CaptureRemovesCityDefenses, MilitaryDomain, CityStrengthModifier, PlunderType, PlunderAmount, AdvisorType
FROM	Districts
WHERE	DistrictType='DISTRICT_STREET_CARNIVAL';
--------------------------------------------------------------

-- DistrictReplaces
--------------------------------------------------------------
INSERT OR IGNORE INTO DistrictReplaces
		(CivUniqueDistrictType,	ReplacesDistrictType)
VALUES	('DISTRICT_JNR_DULT',	'DISTRICT_ENTERTAINMENT_COMPLEX');
--------------------------------------------------------------

-- MutuallyExclusiveDistricts
--------------------------------------------------------------
INSERT OR IGNORE INTO MutuallyExclusiveDistricts
		(District,				MutuallyExclusiveDistrict)
SELECT	'DISTRICT_JNR_DULT',	DistrictType
FROM	Districts
WHERE	DistrictType='DISTRICT_WATER_ENTERTAINMENT_COMPLEX';

INSERT OR IGNORE INTO MutuallyExclusiveDistricts
		(District,					MutuallyExclusiveDistrict)
SELECT	DistrictType,				'DISTRICT_JNR_DULT'
FROM	Districts
WHERE	DistrictType='DISTRICT_WATER_ENTERTAINMENT_COMPLEX';
--------------------------------------------------------------

-- District_TradeRouteYields
--------------------------------------------------------------
INSERT OR IGNORE INTO District_TradeRouteYields
		(DistrictType,			YieldType,	YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
SELECT	'DISTRICT_JNR_DULT',	YieldType,	YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination
FROM	District_TradeRouteYields
WHERE	DistrictType='DISTRICT_STREET_CARNIVAL';
--------------------------------------------------------------

-- Adjacency_YieldChanges
--------------------------------------------------------------
INSERT OR IGNORE INTO Adjacency_YieldChanges
		(ID,				AdjacentDistrict,		Description,						YieldType,		YieldChange,	TilesRequired)
VALUES	('JNR_Dult_Gold',	'DISTRICT_JNR_DULT',	'LOC_DISTRICT_JNR_DULT_GOLD',		'YIELD_GOLD',	2,				1),
		('JNR_Dult_Faith',	'DISTRICT_JNR_DULT',	'LOC_DISTRICT_JNR_DULT_FAITH',		'YIELD_FAITH',	2,				1);

INSERT OR IGNORE INTO Adjacency_YieldChanges
		(ID,				AdjacentDistrict,		Description,						YieldType, YieldChange, TilesRequired)
SELECT	'JNR_Dult_Culture',	'DISTRICT_JNR_DULT',	'LOC_DISTRICT_JNR_DULT_CULTURE',	YieldType, YieldChange, TilesRequired
FROM	Adjacency_YieldChanges
WHERE	ID='EntertainmentComplex_Culture';
--------------------------------------------------------------

-- District_Adjacencies
--------------------------------------------------------------
INSERT OR IGNORE INTO District_Adjacencies
		(YieldChangeId,		DistrictType)
VALUES	('JNR_Dult_Gold',	'DISTRICT_COMMERCIAL_HUB'),
		('JNR_Dult_Faith',	'DISTRICT_HOLY_SITE');

INSERT OR IGNORE INTO District_Adjacencies
		(YieldChangeId,		DistrictType)
SELECT	'JNR_Dult_Culture',	DistrictType
FROM	District_Adjacencies
WHERE	YieldChangeId='StreetCarnival_Culture';
--------------------------------------------------------------

-- RequirementSets
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('DISTRICT_IS_WORLD_WONDER_JNR',	'REQUIREMENTSET_TEST_ALL');
--------------------------------------------------------------

-- RequirementSetRequirements
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('DISTRICT_IS_WORLD_WONDER_JNR',	'REQUIRES_DISTRICT_IS_WORLD_WONDER');
--------------------------------------------------------------

-- DynamicModifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO DynamicModifiers
		(ModifierType,												CollectionType,					EffectType)
VALUES	('MODIFIER_JNR_CITY_DISTRICTS_ADJUST_EXTRA_ENTERTAINMENT',	'COLLECTION_CITY_DISTRICTS',	'EFFECT_ADJUST_DISTRICT_EXTRA_ENTERTAINMENT');
--------------------------------------------------------------

-- Modifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO Modifiers
		(ModifierId,				ModifierType,												SubjectRequirementSetId)
VALUES	('DULT_JNR_WONDER_AMENITY',	'MODIFIER_JNR_CITY_DISTRICTS_ADJUST_EXTRA_ENTERTAINMENT',	'DISTRICT_IS_WORLD_WONDER_JNR');
--------------------------------------------------------------

-- ModifierArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,				Name,		Value)
VALUES	('DULT_JNR_WONDER_AMENITY',	'Amount',	1);
--------------------------------------------------------------

-- DistrictModifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO DistrictModifiers
		(DistrictType,			ModifierId)
VALUES	('DISTRICT_JNR_DULT',	'DULT_JNR_WONDER_AMENITY');
--------------------------------------------------------------