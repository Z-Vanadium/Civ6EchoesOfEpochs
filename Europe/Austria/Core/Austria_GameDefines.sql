--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				BackgroundImage,						ForegroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_MER_MARIA_THERESA',	'LEADER_NEUTRAL_BACKGROUND',				'LEADER_MER_MARIA_THERESA_NEUTRAL',					1);	

--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,												Kind)
VALUES	('LEADER_MER_MARIA_THERESA',									'KIND_LEADER'),
		('TRAIT_CIVILIZATION_BUILDING_MER_COFFEE_HOUSE',			'KIND_TRAIT'),	
		('TRAIT_CIVILIZATION_UNIT_MER_GRENZER',			'KIND_TRAIT'),	
		('CIVILIZATION_MER_AUSTRIA',					'KIND_CIVILIZATION');
		
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,						Name,					Description)
VALUES	('TRAIT_LEADER_MER_THERESIAN_REFORM',					'LOC_TRAIT_LEADER_MER_THERESIAN_REFORM_NAME',		'LOC_TRAIT_LEADER_MER_THERESIAN_REFORM_DESCRIPTION'),
		('TRAIT_CIVILIZATION_UNIT_MER_GRENZER',					'LOC_TRAIT_CIVILIZATION_UNIT_MER_GRENZER_NAME',		'LOC_TRAIT_CIVILIZATION_UNIT_MER_GRENZER_DESCRIPTION'),
		('TRAIT_CIVILIZATION_MER_CROWNLANDS',		'LOC_TRAIT_CIVILIZATION_MER_CROWNLANDS_NAME',		'LOC_TRAIT_CIVILIZATION_MER_CROWNLANDS_DESCRIPTION'),
		('TRAIT_CIVILIZATION_BUILDING_MER_COFFEE_HOUSE',				'LOC_TRAIT_CIVILIZATION_BUILDING_MER_COFFEE_HOUSE_NAME',		'LOC_TRAIT_CIVILIZATION_BUILDING_MER_COFFEE_HOUSE_DESCRIPTION');		
-------------------------------------
-- Civilizations
-------------------------------------	
INSERT INTO Civilizations	
		(CivilizationType,					Name,												Description,									Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth)
VALUES	('CIVILIZATION_MER_AUSTRIA',	'LOC_CIVILIZATION_MER_AUSTRIA_NAME',			'LOC_CIVILIZATION_MER_AUSTRIA_DESCRIPTION',		'LOC_CIVILIZATION_MER_AUSTRIA_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	'10'     			);	
-------------------------------------
-- StartBias
-------------------------------------	
INSERT INTO StartBiasTerrains
		(CivilizationType,						TerrainType,							Tier)
VALUES	('CIVILIZATION_MER_AUSTRIA',				'TERRAIN_GRASS_HILLS',						'3'	),
		('CIVILIZATION_MER_AUSTRIA',				'TERRAIN_GRASS_MOUNTAIN',						'1'	),
		('CIVILIZATION_MER_AUSTRIA',				'TERRAIN_PLAINS_MOUNTAIN',						'1'	);
INSERT INTO StartBiasRivers
		(CivilizationType,						Tier	)
VALUES	('CIVILIZATION_MER_AUSTRIA',		'2'		);
----------------------------------------------------------------------------------------------------------------------------			
-- CityNames			
----------------------------------------------------------------------------------------------------------------------------		
INSERT INTO CityNames	
		(CivilizationType,			CityName)	
VALUES	('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_1'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_2'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_3'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_4'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_5'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_6'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_7'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_8'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_9'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_10'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_11'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_12'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_13'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_14'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_15'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_16'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_17'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_18'),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_19'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_20'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_21'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_22'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_23'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_24'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_25'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_26'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_27'),	
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_28'),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_29'),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITY_NAME_MER_AUSTRIA_30');
----------------------------------------------------------------------------------------------------------------------------
-- CivilizationCitizenNames
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationCitizenNames	
		(CivilizationType,			CitizenName,								Female,		Modern)
VALUES	('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MALE_1',				0,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MALE_2',				0,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MALE_3',				0,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MALE_4',				0,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MALE_5',				0,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MALE_6',				0,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MALE_7',				0,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MALE_8',				0,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MALE_9',				0,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MALE_10',			0,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_FEMALE_1',			1,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_FEMALE_2',			1,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_FEMALE_3',			1,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_FEMALE_4',			1,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_FEMALE_5',			1,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_FEMALE_6',			1,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_FEMALE_7',			1,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_FEMALE_8',			1,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_FEMALE_9',			1,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_FEMALE_10',			1,			0),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_MALE_1',		0,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_MALE_2',		0,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_MALE_3',		0,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_MALE_4',		0,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_MALE_5',		0,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_MALE_6',		0,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_MALE_7',		0,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_MALE_8',		0,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_MALE_9',		0,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_MALE_10',		0,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_FEMALE_1',	1,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_FEMALE_2',	1,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_FEMALE_3',	1,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_FEMALE_4',	1,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_FEMALE_5',	1,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_FEMALE_6',	1,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_FEMALE_7',	1,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_FEMALE_8',	1,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_FEMALE_9',	1,			1),
		('CIVILIZATION_MER_AUSTRIA',	'LOC_CITIZEN_MER_AUSTRIA_MODERN_FEMALE_10',	1,			1);	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,												InheritFrom,		SceneLayers)
VALUES	('LEADER_MER_MARIA_THERESA',		'LOC_LEADER_MER_MARIA_THERESA_NAME',									'LEADER_DEFAULT',	4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,					Quote)
VALUES	('LEADER_MER_MARIA_THERESA',			'LOC_PEDIA_LEADERS_PAGE_LEADER_MER_MARIA_THERESA_QUOTE');	
-------------------------------------
-- HistoricalAgendas
-------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,				AgendaType)
VALUES	('LEADER_MER_MARIA_THERESA',			'AGENDA_MER_THERESA_AGENDA');
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,					TraitType)
VALUES	('LEADER_MER_MARIA_THERESA',		'TRAIT_LEADER_MER_THERESIAN_REFORM');
-------------------------------------
-- CivilizationTraits
-------------------------------------	
INSERT INTO CivilizationTraits	
		(CivilizationType,					TraitType)
VALUES	('CIVILIZATION_MER_AUSTRIA',		'TRAIT_CIVILIZATION_MER_CROWNLANDS'),
		('CIVILIZATION_MER_AUSTRIA',		'TRAIT_CIVILIZATION_UNIT_MER_GRENZER'),
		('CIVILIZATION_MER_AUSTRIA',		'TRAIT_CIVILIZATION_BUILDING_MER_COFFEE_HOUSE');
-------------------------------------
-- FavoredReligions
-------------------------------------	
INSERT INTO FavoredReligions	
		(LeaderType,				ReligionType)
VALUES	('LEADER_MER_MARIA_THERESA',			'RELIGION_CATHOLICISM');			
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_MER_CROWNLANDS',			'KIND_TRAIT'	),
		('TRAIT_LEADER_MER_THERESIAN_REFORM',			'KIND_TRAIT'	),
		('MODTYPE_MER_CROWNLANDS_GOVERNOR',	'KIND_MODIFIER'	),
		('MODTYPE_MER_CROWNLANDS_GOVERNOR_PRODUCTION',	'KIND_MODIFIER'	),
		('MODTYPE_MER_THERESIAN_REFORM_UNIT',	'KIND_MODIFIER'	),
		('MODTYPE_MER_THERESIAN_REFORM_ATTACH_MODIFIER',	'KIND_MODIFIER'	),
		('MODTYPE_MER_CROWNLANDS_GOVERNOR_FAVOR',	'KIND_MODIFIER'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,									ModifierId									)
VALUES	('TRAIT_LEADER_MER_THERESIAN_REFORM',		'MODIFIER_MER_CROWNLANDS_GOVERNOR_ATTACH'	),
		('TRAIT_LEADER_MER_THERESIAN_REFORM',		'MODIFIER_MER_CROWNLANDS_GOVERNOR_FAVOR_ATTACH'	),
		('TRAIT_LEADER_MER_THERESIAN_REFORM',		'MODIFIER_MER_CROWNLANDS_GOVERNOR_PRODUCTION_ATTACH'	),
		('TRAIT_LEADER_MER_THERESIAN_REFORM',		'MODIFIER_MER_CROWNLANDS_DIPLOMACY_SLOT'	),

		('TRAIT_CIVILIZATION_MER_CROWNLANDS',		'MODIFIER_MER_THERESIAN_REFORM_FREE_MELEE_ATTACH'	);
-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,											CollectionType,						EffectType							)
VALUES	('MODTYPE_MER_THERESIAN_REFORM_ATTACH_MODIFIER',		'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ATTACH_MODIFIER'			),
		('MODTYPE_MER_CROWNLANDS_GOVERNOR',						'COLLECTION_OWNER',					'EFFECT_ADJUST_INFLUENCE_POINTS_PER_TURN'	),
		('MODTYPE_MER_CROWNLANDS_GOVERNOR_FAVOR',				'COLLECTION_OWNER',					'EFFECT_ADJUST_PLAYER_EXTRA_FAVOR_PER_TURN'	),
		('MODTYPE_MER_CROWNLANDS_GOVERNOR_PRODUCTION',			'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_ALL_DISTRICTS_PRODUCTION'	),
		('MODTYPE_MER_THERESIAN_REFORM_UNIT',					'COLLECTION_OWNER',					'EFFECT_GRANT_UNIT_BY_CLASS'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,												ModifierType,										RunOnce,		Permanent,				SubjectRequirementSetId						)
VALUES	('MODIFIER_MER_CROWNLANDS_GOVERNOR_ATTACH',					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',			0,				0,						NULL			),
		('MODIFIER_MER_CROWNLANDS_GOVERNOR',						'MODTYPE_MER_CROWNLANDS_GOVERNOR',					0,				0,						'MER_AUSTRIAN_GOVERNOR'			),
		('MODIFIER_MER_CROWNLANDS_GOVERNOR_FAVOR_ATTACH',					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',			0,				0,						NULL			),
		('MODIFIER_MER_CROWNLANDS_GOVERNOR_FAVOR',						'MODTYPE_MER_CROWNLANDS_GOVERNOR_FAVOR',			0,				0,						'MER_AUSTRIAN_GOVERNOR'			),		
		('MODIFIER_MER_CROWNLANDS_GOVERNOR_PRODUCTION_ATTACH',		'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',			0,				0,						NULL			),
		('MODIFIER_MER_CROWNLANDS_GOVERNOR_PRODUCTION',				'MODTYPE_MER_CROWNLANDS_GOVERNOR_PRODUCTION',		0,				0,						'MER_AUSTRIAN_GOVERNOR'			),

		('MODIFIER_MER_CROWNLANDS_DIPLOMACY_SLOT',				'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		0,				0,						'PLAYER_HAS_POLITICAL_PHILOSOPHY'			),

		('MODIFIER_MER_THERESIAN_REFORM_FREE_MELEE_ATTACH',					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',	0,				0,						NULL			),
		('MODIFIER_MER_THERESIAN_REFORM_FREE_MELEE',				'MODTYPE_MER_THERESIAN_REFORM_UNIT',				1,				1,						'MER_AUSTRIAN_GOVERNOR'			);
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value	)
VALUES	('MODIFIER_MER_CROWNLANDS_GOVERNOR_ATTACH',					'ModifierId',					'MODIFIER_MER_CROWNLANDS_GOVERNOR'		),
		('MODIFIER_MER_CROWNLANDS_GOVERNOR',						'Amount',				1		),

		('MODIFIER_MER_CROWNLANDS_GOVERNOR_FAVOR_ATTACH',				'ModifierId',					'MODIFIER_MER_CROWNLANDS_GOVERNOR_FAVOR'		),
		('MODIFIER_MER_CROWNLANDS_GOVERNOR_FAVOR',						'Amount',				1		),

		('MODIFIER_MER_CROWNLANDS_GOVERNOR_PRODUCTION_ATTACH',		'ModifierId',					'MODIFIER_MER_CROWNLANDS_GOVERNOR_PRODUCTION'		),
		('MODIFIER_MER_CROWNLANDS_GOVERNOR_PRODUCTION',				'Amount',				20		),

		('MODIFIER_MER_CROWNLANDS_DIPLOMACY_SLOT',				'GovernmentSlotType',			'SLOT_DIPLOMATIC'		),
		('MODIFIER_MER_CROWNLANDS_DIPLOMACY_SLOT',						'Amount',				1		),

		('MODIFIER_MER_THERESIAN_REFORM_FREE_MELEE_ATTACH',		'ModifierId',					'MODIFIER_MER_THERESIAN_REFORM_FREE_MELEE'		),
		('MODIFIER_MER_THERESIAN_REFORM_FREE_MELEE',			'UnitPromotionClassType',				'PROMOTION_CLASS_MELEE'		);
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId						)
VALUES	('MER_HAS_THE_ENLIGHTENMENT',	'REQ_MER_HAS_THE_ENLIGHTENMENT'	),
		('MER_AUSTRIAN_GOVERNOR',		'REQ_MER_AUSTRIAN_GOVERNOR'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType			)
VALUES	('MER_HAS_THE_ENLIGHTENMENT',						'REQUIREMENTSET_TEST_ALL'	),
		('MER_AUSTRIAN_GOVERNOR',							'REQUIREMENTSET_TEST_ALL'	);
-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,												RequirementType,						Inverse)
VALUES	('REQ_MER_HAS_THE_ENLIGHTENMENT',							'REQUIREMENT_PLAYER_HAS_CIVIC',			0	),
		('REQ_MER_AUSTRIAN_GOVERNOR',								'REQUIREMENT_CITY_HAS_GOVERNOR',		0	);
-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,														Name,				Value								)
VALUES	('REQ_MER_HAS_THE_ENLIGHTENMENT',									'CivicType',		'CIVIC_THE_ENLIGHTENMENT'	),
		('REQ_MER_AUSTRIAN_GOVERNOR',									'Established',		1	);
--==========================================================================================================================
-- SEELINGCAT'S UA
--==========================================================================================================================




INSERT INTO	Types
		(Type,											Kind			)
VALUES	('MODTYPE_MER_THERESIAN_REFORM_ADJUST_HOUSING',	'KIND_MODIFIER'	);

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,						EffectType							)
VALUES	('MODTYPE_MER_THERESIAN_REFORM_ADJUST_HOUSING',	'COLLECTION_CITY_DISTRICTS',		'EFFECT_ADJUST_DISTRICT_HOUSING'	);



INSERT INTO	TraitModifiers	
		(TraitType,													ModifierId												)
SELECT	'TRAIT_LEADER_MER_THERESIAN_REFORM',								'MODIFIER_MER_THERESIAN_REFORMS_' || DistrictType || '_HOUSING'
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');



INSERT INTO Modifiers
		(ModifierId,																ModifierType,									SubjectRequirementSetId,									OwnerRequirementSetId)
SELECT	'MODIFIER_MER_THERESIAN_REFORMS_' || DistrictType || '_HOUSING',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',		'REQSET_MER_THERESIAN_REFORMS_CITY_HAS_' || DistrictType,	'REQSET_MER_THERESIAN_COUNT_CAPITAL_HAS_' || DistrictType
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	

INSERT INTO Modifiers
		(ModifierId,																ModifierType,									SubjectRequirementSetId)
SELECT	'MODIFIER_MER_THERESIAN_REFORMS_' || DistrictType || '_HOUSING_ATTACH',		'MODTYPE_MER_THERESIAN_REFORM_ADJUST_HOUSING',	'REQSET_MER_THERESIAN_REFORMS_IS_' || DistrictType
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	


		
INSERT INTO ModifierArguments
		(ModifierId,																Name,			Value	)
SELECT	'MODIFIER_MER_THERESIAN_REFORMS_' || DistrictType || '_HOUSING',			'ModifierId',	'MODIFIER_MER_THERESIAN_REFORMS_' || DistrictType || '_HOUSING_ATTACH'
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	
		
INSERT INTO ModifierArguments
		(ModifierId,																Name,			Value	)
SELECT	'MODIFIER_MER_THERESIAN_REFORMS_' || DistrictType || '_HOUSING_ATTACH',		'Amount',		1
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	



INSERT INTO RequirementSets
		(RequirementSetId,															RequirementSetType)
SELECT	'REQSET_MER_THERESIAN_REFORMS_CITY_HAS_' || DistrictType,					'REQUIREMENTSET_TEST_ALL'
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	

INSERT INTO RequirementSets
		(RequirementSetId,															RequirementSetType)
SELECT	'REQSET_MER_THERESIAN_COUNT_CAPITAL_HAS_' || DistrictType,					'REQUIREMENTSET_TEST_ALL'
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	

INSERT INTO RequirementSets
		(RequirementSetId,															RequirementSetType)
SELECT	'REQSET_MER_THERESIAN_CHECK_CAPITAL_HAS_' || DistrictType,					'REQUIREMENTSET_TEST_ALL'
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	

INSERT INTO RequirementSets
		(RequirementSetId,															RequirementSetType)
SELECT	'REQSET_MER_THERESIAN_REFORMS_IS_' || DistrictType,							'REQUIREMENTSET_TEST_ALL'
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	



INSERT INTO RequirementSetRequirements
		(RequirementSetId,															RequirementId)
SELECT	'REQSET_MER_THERESIAN_REFORMS_CITY_HAS_' || DistrictType,					'REQ_MER_THERESIAN_CITY_NOT_CAPITAL_REQ'
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	

INSERT INTO RequirementSetRequirements
		(RequirementSetId,															RequirementId)
SELECT	'REQSET_MER_THERESIAN_REFORMS_CITY_HAS_' || DistrictType,					'REQ_MER_THERESIAN_REFORMS_CITY_HAS_' || DistrictType
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	

INSERT INTO RequirementSetRequirements
		(RequirementSetId,															RequirementId)
SELECT	'REQSET_MER_THERESIAN_COUNT_CAPITAL_HAS_' || DistrictType,					'REQ_MER_THERESIAN_CAPITAL_HAS_' || DistrictType
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	

INSERT INTO RequirementSetRequirements
		(RequirementSetId,															RequirementId)
SELECT	'REQSET_MER_THERESIAN_CHECK_CAPITAL_HAS_' || DistrictType,					'REQ_MER_THERESIAN_REFORMS_CITY_HAS_' || DistrictType
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	

INSERT INTO RequirementSetRequirements
		(RequirementSetId,															RequirementId)
SELECT	'REQSET_MER_THERESIAN_CHECK_CAPITAL_HAS_' || DistrictType,					'REQ_MER_THERESIAN_CITY_IS_CAPITAL'
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	

INSERT INTO RequirementSetRequirements
		(RequirementSetId,															RequirementId)
SELECT	'REQSET_MER_THERESIAN_REFORMS_IS_' || DistrictType,							'REQ_MER_THERESIAN_REFORMS_IS_' || DistrictType
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');	


INSERT INTO Requirements
		(RequirementId, 											RequirementType)
SELECT	'REQ_MER_THERESIAN_REFORMS_CITY_HAS_' || DistrictType,		'REQUIREMENT_CITY_HAS_DISTRICT'
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');

INSERT INTO Requirements
		(RequirementId, 											RequirementType)
SELECT	'REQ_MER_THERESIAN_CAPITAL_HAS_' || DistrictType,			'REQUIREMENT_COLLECTION_COUNT_ATLEAST'
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');

INSERT INTO Requirements
		(RequirementId, 											RequirementType)
SELECT	'REQ_MER_THERESIAN_REFORMS_IS_' || DistrictType,			'REQUIREMENT_DISTRICT_TYPE_MATCHES'
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');

INSERT INTO Requirements
		(RequirementId, 											RequirementType,								Inverse)
VALUES	('REQ_MER_THERESIAN_CITY_NOT_CAPITAL_REQ',					'REQUIREMENT_CITY_HAS_BUILDING',				1),
		('REQ_MER_THERESIAN_CITY_IS_CAPITAL',						'REQUIREMENT_CITY_HAS_BUILDING',				0);


INSERT INTO RequirementArguments
		(RequirementId, 											Name,							Value)
SELECT	'REQ_MER_THERESIAN_REFORMS_CITY_HAS_' || DistrictType,		'DistrictType',					DistrictType
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');

INSERT INTO RequirementArguments
		(RequirementId, 											Name,							Value)
SELECT	'REQ_MER_THERESIAN_CAPITAL_HAS_' || DistrictType,			'CollectionType',				'COLLECTION_PLAYER_CITIES'
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');

INSERT INTO RequirementArguments
		(RequirementId, 											Name,							Value)
SELECT	'REQ_MER_THERESIAN_CAPITAL_HAS_' || DistrictType,			'Count',						1
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');

INSERT INTO RequirementArguments
		(RequirementId, 											Name,							Value)
SELECT	'REQ_MER_THERESIAN_CAPITAL_HAS_' || DistrictType,			'RequirementSetId',				'REQSET_MER_THERESIAN_CHECK_CAPITAL_HAS_' || DistrictType
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');

INSERT INTO RequirementArguments
		(RequirementId, 											Name,							Value)
SELECT	'REQ_MER_THERESIAN_REFORMS_IS_' || DistrictType,			'DistrictType',					DistrictType
FROM Districts WHERE DistrictType IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_THEATER', 'DISTRICT_HARBOR', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');

INSERT INTO RequirementArguments
		(RequirementId, 											Name,							Value)
VALUES	('REQ_MER_THERESIAN_CITY_NOT_CAPITAL_REQ',					'BuildingType',					'BUILDING_PALACE'),
		('REQ_MER_THERESIAN_CITY_IS_CAPITAL',						'BuildingType',					'BUILDING_PALACE');
--==========================================================================================================================
-- AGENDAS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_MER_THERESA_AGENDA',		'KIND_TRAIT');			
-------------------------------------			
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,							Name,									Description)
VALUES	('AGENDA_MER_THERESA_AGENDA',			'LOC_AGENDA_MER_THERESA_AGENDA_NAME',	'LOC_AGENDA_MER_THERESA_AGENDA_DESCRIPTION');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,					Description)
VALUES	('TRAIT_AGENDA_MER_THERESA_AGENDA',		'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');	
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,							TraitType)
VALUES	('AGENDA_MER_THERESA_AGENDA',			'TRAIT_AGENDA_MER_THERESA_AGENDA');	
-------------------------------------		
-- TraitModifiers		
-------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_AGENDA_MER_THERESA_AGENDA',		'AGENDA_MER_THERESA_AGENDA_SAME_REL_GOV'),
		('TRAIT_AGENDA_MER_THERESA_AGENDA',		'AGENDA_MER_THERESA_AGENDA_DIFF_REL_GOV');
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,							ModifierType,										SubjectRequirementSetId)
VALUES	('AGENDA_MER_THERESA_AGENDA_SAME_REL_GOV',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'MER_THERESA_SAME_GOV_REL'),
		('AGENDA_MER_THERESA_AGENDA_DIFF_REL_GOV',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'MER_THERESA_DIFFERENT_GOV_REL');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value,													Extra,				Type)
VALUES	('AGENDA_MER_THERESA_AGENDA_SAME_REL_GOV',		'InitialValue',					8,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_THERESA_AGENDA_SAME_REL_GOV',		'StatementKey',					'LOC_DIPLO_KUDOS_LEADER_MER_MARIA_THERESA_REASON_RELIGION',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_THERESA_AGENDA_SAME_REL_GOV',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_MARIA_THERESA_THERESA_AGENDA_SAME_REL_GOV',		null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_THERESA_AGENDA_DIFF_REL_GOV',		'InitialValue',					-8,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_THERESA_AGENDA_DIFF_REL_GOV',		'StatementKey',					'LOC_DIPLO_WARNING_LEADER_MER_MARIA_THERESA_REASON_NO_RELIGION',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_THERESA_AGENDA_DIFF_REL_GOV',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_MARIA_THERESA_THERESA_AGENDA_DIFF_REL_GOV',		null,				'ARGTYPE_IDENTITY');
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('MER_THERESA_DIFFERENT_GOV_REL',		'REQ_MER_PLAYER_IS_DIFFERENT_RELIGION'),
		('MER_THERESA_DIFFERENT_GOV_REL',		'REQUIRES_HAS_DIFFERENT_GOVERNMENT'),
		('MER_THERESA_SAME_GOV_REL',		'REQUIRES_SAME_RELIGION'),
		('MER_THERESA_SAME_GOV_REL',		'REQUIRES_HAS_SAME_GOVERNMENT');

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('MER_THERESA_DIFFERENT_GOV_REL',	'REQUIREMENTSET_TEST_ALL'	),
		('MER_THERESA_SAME_GOV_REL',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType,						Inverse)
VALUES	('REQ_MER_PLAYER_IS_DIFFERENT_RELIGION',		'REQUIREMENT_PLAYER_IS_SAME_RELIGION',		1	);
-------------------------------------		
-- ModifierStrings		
-------------------------------------			
INSERT INTO ModifierStrings			
		(ModifierId,											Context,	Text)
VALUES	('AGENDA_MER_THERESA_AGENDA_SAME_REL_GOV',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_MER_THERESA_AGENDA_DIFF_REL_GOV',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- CivilizationLeaders
-------------------------------------	
INSERT INTO CivilizationLeaders 
        (CivilizationType,			LeaderType,		CapitalName)
VALUES  ('CIVILIZATION_MER_AUSTRIA',	'LEADER_MER_MARIA_THERESA',	'LOC_CITY_NAME_MER_AUSTRIA_1');
--==========================================================================================================================
--==========================================================================================================================
