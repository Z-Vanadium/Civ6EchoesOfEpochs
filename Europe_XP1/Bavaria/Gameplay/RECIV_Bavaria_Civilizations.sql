-- RECIV_Bavaria_Civilizations
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,									Kind)
VALUES	('CIVILIZATION_JNR_BAVARIA',			'KIND_CIVILIZATION'),
		('TRAIT_CIVILIZATION_JNR_WEISS_BLAU',	'KIND_TRAIT');
--------------------------------------------------------------

-- Civilizations
--------------------------------------------------------------
INSERT OR IGNORE INTO Civilizations
		(CivilizationType,				Name,									Description,								Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth,	Ethnicity)
VALUES	('CIVILIZATION_JNR_BAVARIA',	'LOC_CIVILIZATION_JNR_BAVARIA_NAME',	'LOC_CIVILIZATION_JNR_BAVARIA_DESCRIPTION',	'LOC_CIVILIZATION_JNR_BAVARIA_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	10,						'ETHNICITY_EURO');
--------------------------------------------------------------

-- CivilizationLeaders
--------------------------------------------------------------
INSERT OR IGNORE INTO CivilizationLeaders
		(CivilizationType,				LeaderType,						CapitalName)
VALUES	('CIVILIZATION_JNR_BAVARIA',	'LEADER_LUDWIG_JNR_BAVARIA',	'LOC_CITY_NAME_MUNICH_CAPITAL');
--------------------------------------------------------------

-- CivilizationInfo
--------------------------------------------------------------
INSERT OR IGNORE INTO CivilizationInfo
		(CivilizationType,				SortIndex,	Header,						Caption)
VALUES	('CIVILIZATION_JNR_BAVARIA',	10,			'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_JNR_BAVARIA_LOCATION'),
		('CIVILIZATION_JNR_BAVARIA',	20,			'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_JNR_BAVARIA_SIZE'),
		('CIVILIZATION_JNR_BAVARIA',	30,			'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_JNR_BAVARIA_POPULATION'),
		('CIVILIZATION_JNR_BAVARIA',	40,			'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_JNR_BAVARIA_CAPITAL');
--------------------------------------------------------------

-- StartBiasRivers
--------------------------------------------------------------
INSERT OR IGNORE INTO StartBiasRivers
		(CivilizationType,											Tier)
VALUES	('CIVILIZATION_JNR_BAVARIA',								3);
--------------------------------------------------------------

-- StartBiasTerrains
--------------------------------------------------------------
INSERT OR IGNORE INTO StartBiasTerrains
		(CivilizationType,				TerrainType,				Tier)
VALUES	('CIVILIZATION_JNR_BAVARIA',	'TERRAIN_GRASS_MOUNTAIN',	3),
		('CIVILIZATION_JNR_BAVARIA',	'TERRAIN_PLAINS_MOUNTAIN',	3),
		('CIVILIZATION_JNR_BAVARIA',	'TERRAIN_DESERT_MOUNTAIN',	5),
		('CIVILIZATION_JNR_BAVARIA',	'TERRAIN_TUNDRA_MOUNTAIN',	5);
--------------------------------------------------------------

-- Traits
--------------------------------------------------------------
INSERT OR IGNORE INTO Traits
		(TraitType,								Name,											Description)
VALUES	('TRAIT_CIVILIZATION_JNR_WEISS_BLAU',	'LOC_TRAIT_CIVILIZATION_JNR_WEISS_BLAU_NAME',	'LOC_TRAIT_CIVILIZATION_JNR_WEISS_BLAU_DESCRIPTION');
--------------------------------------------------------------

-- CivilizationTraits
--------------------------------------------------------------
INSERT OR IGNORE INTO CivilizationTraits
		(CivilizationType,				TraitType)
VALUES	('CIVILIZATION_JNR_BAVARIA',	'TRAIT_CIVILIZATION_JNR_WEISS_BLAU');
--------------------------------------------------------------

-- Requirements
--------------------------------------------------------------
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('REQUIRES_PLOT_HAS_IMPROVED_BONUS_JNR',		'REQUIREMENT_PLOT_IMPROVED_RESOURCE_CLASS_TYPE_MATCHES'),
		('REQUIRES_PLOT_HAS_IMPROVED_LUXURY_JNR',		'REQUIREMENT_PLOT_IMPROVED_RESOURCE_CLASS_TYPE_MATCHES'),
		('REQUIRES_PLOT_HAS_IMPROVED_STRATEGIC_JNR',	'REQUIREMENT_PLOT_IMPROVED_RESOURCE_CLASS_TYPE_MATCHES'),

		('REQUIRES_PLOT_BREATHTAKING_APPEAL',			'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN');
--------------------------------------------------------------

-- RequirementArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,					Value)
VALUES	('REQUIRES_PLOT_HAS_IMPROVED_BONUS_JNR',		'ResourceClassType',	'RESOURCECLASS_BONUS'),
		('REQUIRES_PLOT_HAS_IMPROVED_LUXURY_JNR',		'ResourceClassType',	'RESOURCECLASS_LUXURY'),
		('REQUIRES_PLOT_HAS_IMPROVED_STRATEGIC_JNR',	'ResourceClassType',	'RESOURCECLASS_STRATEGIC'),

		('REQUIRES_PLOT_BREATHTAKING_APPEAL',			'MinimumAppeal',		4);
--------------------------------------------------------------

-- RequirementSets
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('PLOT_HAS_CHARMING_IMPROVED_BONUS_JNR',			'REQUIREMENTSET_TEST_ALL'),
		('PLOT_HAS_CHARMING_IMPROVED_LUXURY_JNR',			'REQUIREMENTSET_TEST_ALL'),
		('PLOT_HAS_CHARMING_IMPROVED_STRATEGIC_JNR',		'REQUIREMENTSET_TEST_ALL'),
		('PLOT_HAS_BREATHTAKING_IMPROVED_BONUS_JNR',		'REQUIREMENTSET_TEST_ALL'),
		('PLOT_HAS_BREATHTAKING_IMPROVED_LUXURY_JNR',		'REQUIREMENTSET_TEST_ALL'),
		('PLOT_HAS_BREATHTAKING_IMPROVED_STRATEGIC_JNR',	'REQUIREMENTSET_TEST_ALL');
--------------------------------------------------------------

-- RequirementSetRequirements
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('PLOT_HAS_CHARMING_IMPROVED_BONUS_JNR',			'REQUIRES_PLOT_HAS_IMPROVED_BONUS_JNR'),
		('PLOT_HAS_CHARMING_IMPROVED_LUXURY_JNR',			'REQUIRES_PLOT_HAS_IMPROVED_LUXURY_JNR'),
		('PLOT_HAS_CHARMING_IMPROVED_STRATEGIC_JNR',		'REQUIRES_PLOT_HAS_IMPROVED_STRATEGIC_JNR'),
		('PLOT_HAS_CHARMING_IMPROVED_BONUS_JNR',			'REQUIRES_PLOT_CHARMING_APPEAL'),
		('PLOT_HAS_CHARMING_IMPROVED_LUXURY_JNR',			'REQUIRES_PLOT_CHARMING_APPEAL'),
		('PLOT_HAS_CHARMING_IMPROVED_STRATEGIC_JNR',		'REQUIRES_PLOT_CHARMING_APPEAL'),

		('PLOT_HAS_BREATHTAKING_IMPROVED_BONUS_JNR',		'REQUIRES_PLOT_HAS_IMPROVED_BONUS_JNR'),
		('PLOT_HAS_BREATHTAKING_IMPROVED_LUXURY_JNR',		'REQUIRES_PLOT_HAS_IMPROVED_LUXURY_JNR'),
		('PLOT_HAS_BREATHTAKING_IMPROVED_STRATEGIC_JNR',	'REQUIRES_PLOT_HAS_IMPROVED_STRATEGIC_JNR'),
		('PLOT_HAS_BREATHTAKING_IMPROVED_BONUS_JNR',		'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
		('PLOT_HAS_BREATHTAKING_IMPROVED_LUXURY_JNR',		'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
		('PLOT_HAS_BREATHTAKING_IMPROVED_STRATEGIC_JNR',	'REQUIRES_PLOT_BREATHTAKING_APPEAL');
--------------------------------------------------------------

-- Modifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO Modifiers
		(ModifierId,											ModifierType,									SubjectRequirementSetId)
VALUES	('TRAIT_JNR_WEISS_BLAU_APPEAL',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_APPEAL',	NULL),
		('TRAIT_JNR_WEISS_BLAU_CHARMING_BONUS_FAITH',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_CHARMING_IMPROVED_BONUS_JNR'),
		('TRAIT_JNR_WEISS_BLAU_CHARMING_LUXURY_CULTURE',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_CHARMING_IMPROVED_LUXURY_JNR'),
		('TRAIT_JNR_WEISS_BLAU_CHARMING_STRATEGIC_SCIENCE',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_CHARMING_IMPROVED_STRATEGIC_JNR'),
		('TRAIT_JNR_WEISS_BLAU_BREATHTAKING_BONUS_FAITH',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_BREATHTAKING_IMPROVED_BONUS_JNR'),
		('TRAIT_JNR_WEISS_BLAU_BREATHTAKING_LUXURY_CULTURE',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_BREATHTAKING_IMPROVED_LUXURY_JNR'),
		('TRAIT_JNR_WEISS_BLAU_BREATHTAKING_STRATEGIC_SCIENCE',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_BREATHTAKING_IMPROVED_STRATEGIC_JNR');
--------------------------------------------------------------

-- ModifierArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('TRAIT_JNR_WEISS_BLAU_APPEAL',							'Amount',		1),
		('TRAIT_JNR_WEISS_BLAU_CHARMING_BONUS_FAITH',			'YieldType',	'YIELD_FAITH'),
		('TRAIT_JNR_WEISS_BLAU_CHARMING_BONUS_FAITH',			'Amount',		1),
		('TRAIT_JNR_WEISS_BLAU_CHARMING_LUXURY_CULTURE',		'YieldType',	'YIELD_CULTURE'),
		('TRAIT_JNR_WEISS_BLAU_CHARMING_LUXURY_CULTURE',		'Amount',		1),
		('TRAIT_JNR_WEISS_BLAU_CHARMING_STRATEGIC_SCIENCE',		'YieldType',	'YIELD_SCIENCE'),
		('TRAIT_JNR_WEISS_BLAU_CHARMING_STRATEGIC_SCIENCE',		'Amount',		1),
		('TRAIT_JNR_WEISS_BLAU_BREATHTAKING_BONUS_FAITH',		'YieldType',	'YIELD_FAITH'),
		('TRAIT_JNR_WEISS_BLAU_BREATHTAKING_BONUS_FAITH',		'Amount',		1),
		('TRAIT_JNR_WEISS_BLAU_BREATHTAKING_LUXURY_CULTURE',	'YieldType',	'YIELD_CULTURE'),
		('TRAIT_JNR_WEISS_BLAU_BREATHTAKING_LUXURY_CULTURE',	'Amount',		1),
		('TRAIT_JNR_WEISS_BLAU_BREATHTAKING_STRATEGIC_SCIENCE',	'YieldType',	'YIELD_SCIENCE'),
		('TRAIT_JNR_WEISS_BLAU_BREATHTAKING_STRATEGIC_SCIENCE',	'Amount',		1);
--------------------------------------------------------------

-- TraitModifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_JNR_WEISS_BLAU',	'TRAIT_JNR_WEISS_BLAU_APPEAL'),
		('TRAIT_CIVILIZATION_JNR_WEISS_BLAU',	'TRAIT_JNR_WEISS_BLAU_CHARMING_BONUS_FAITH'),
		('TRAIT_CIVILIZATION_JNR_WEISS_BLAU',	'TRAIT_JNR_WEISS_BLAU_CHARMING_LUXURY_CULTURE'),
		('TRAIT_CIVILIZATION_JNR_WEISS_BLAU',	'TRAIT_JNR_WEISS_BLAU_CHARMING_STRATEGIC_SCIENCE'),
		('TRAIT_CIVILIZATION_JNR_WEISS_BLAU',	'TRAIT_JNR_WEISS_BLAU_BREATHTAKING_BONUS_FAITH'),
		('TRAIT_CIVILIZATION_JNR_WEISS_BLAU',	'TRAIT_JNR_WEISS_BLAU_BREATHTAKING_LUXURY_CULTURE'),
		('TRAIT_CIVILIZATION_JNR_WEISS_BLAU',	'TRAIT_JNR_WEISS_BLAU_BREATHTAKING_STRATEGIC_SCIENCE');
--------------------------------------------------------------