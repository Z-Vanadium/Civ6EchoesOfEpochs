--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				BackgroundImage,						ForegroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_MER_ODAENATHUS',	'LEADER_CLEOPATRA_BACKGROUND',				'LEADER_MER_ODAENATHUS_NEUTRAL',					1);	
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,												Kind)
VALUES	('LEADER_MER_ODAENATHUS',									'KIND_LEADER'),
		('TRAIT_CIVILIZATION_IMPROVEMENT_MER_FUNERARY_TOWERS',			'KIND_TRAIT'),	
		('TRAIT_CIVILIZATION_UNIT_MER_CLIBANARII',			'KIND_TRAIT'),	
		('CIVILIZATION_MER_PALMYRA',					'KIND_CIVILIZATION');
		
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,						Name,					Description)
VALUES	('TRAIT_LEADER_MER_KING_OF_KINGS',					'LOC_TRAIT_LEADER_MER_KING_OF_KINGS_NAME',		'LOC_TRAIT_LEADER_MER_KING_OF_KINGS_DESCRIPTION'),
		('TRAIT_CIVILIZATION_UNIT_MER_CLIBANARII',					'LOC_TRAIT_CIVILIZATION_UNIT_MER_CLIBANARII_NAME',		'LOC_TRAIT_CIVILIZATION_UNIT_MER_CLIBANARII_DESCRIPTION'),
		('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',		'LOC_TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT_NAME',		'LOC_TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT_DESCRIPTION'),
		('TRAIT_CIVILIZATION_IMPROVEMENT_MER_FUNERARY_TOWERS',				'LOC_TRAIT_CIVILIZATION_IMPROVEMENT_MER_FUNERARY_TOWERS_NAME',		'LOC_TRAIT_CIVILIZATION_IMPROVEMENT_MER_FUNERARY_TOWERS_DESCRIPTION');		
-------------------------------------
-- Civilizations
-------------------------------------	
INSERT INTO Civilizations	
		(CivilizationType,					Name,												Description,									Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth)
VALUES	('CIVILIZATION_MER_PALMYRA',	'LOC_CIVILIZATION_MER_PALMYRA_NAME',			'LOC_CIVILIZATION_MER_PALMYRA_DESCRIPTION',		'LOC_CIVILIZATION_MER_PALMYRA_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	'10'     			);	
-------------------------------------
-- StartBias
-------------------------------------	
INSERT INTO StartBiasTerrains
		(CivilizationType,						TerrainType,							Tier)
VALUES	('CIVILIZATION_MER_PALMYRA',				'TERRAIN_DESERT',						'1'	),
		('CIVILIZATION_MER_PALMYRA',				'TERRAIN_DESERT_HILLS',						'1'	);
INSERT INTO StartBiasFeatures
		(CivilizationType,						FeatureType,							Tier)
VALUES	('CIVILIZATION_MER_PALMYRA',				'FEATURE_OASIS',						'1'	);

INSERT INTO StartBiasResources
		(CivilizationType,						ResourceType,							Tier)
VALUES	('CIVILIZATION_MER_PALMYRA',			'RESOURCE_INCENSE',						'3'	);
----------------------------------------------------------------------------------------------------------------------------			
-- CityNames			
----------------------------------------------------------------------------------------------------------------------------		
INSERT INTO CityNames	
		(CivilizationType,			CityName)	
VALUES	('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_1'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_2'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_3'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_4'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_5'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_6'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_7'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_8'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_9'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_10'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_11'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_12'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_13'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_14'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_15'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_16'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_17'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_18'),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_19'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_20'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_21'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_22'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_23'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_24'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_25'),	
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_26'),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITY_NAME_MER_PALMYRA_27');
----------------------------------------------------------------------------------------------------------------------------
-- CivilizationCitizenNames
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationCitizenNames	
		(CivilizationType,			CitizenName,								Female,		Modern)
VALUES	('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MALE_1',				0,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MALE_2',				0,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MALE_3',				0,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MALE_4',				0,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MALE_5',				0,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MALE_6',				0,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MALE_7',				0,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MALE_8',				0,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MALE_9',				0,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MALE_10',			0,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_FEMALE_1',			1,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_FEMALE_2',			1,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_FEMALE_3',			1,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_FEMALE_4',			1,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_FEMALE_5',			1,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_FEMALE_6',			1,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_FEMALE_7',			1,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_FEMALE_8',			1,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_FEMALE_9',			1,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_FEMALE_10',			1,			0),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_MALE_1',		0,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_MALE_2',		0,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_MALE_3',		0,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_MALE_4',		0,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_MALE_5',		0,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_MALE_6',		0,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_MALE_7',		0,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_MALE_8',		0,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_MALE_9',		0,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_MALE_10',		0,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_FEMALE_1',	1,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_FEMALE_2',	1,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_FEMALE_3',	1,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_FEMALE_4',	1,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_FEMALE_5',	1,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_FEMALE_6',	1,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_FEMALE_7',	1,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_FEMALE_8',	1,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_FEMALE_9',	1,			1),
		('CIVILIZATION_MER_PALMYRA',	'LOC_CITIZEN_MER_PALMYRA_MODERN_FEMALE_10',	1,			1);	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,												InheritFrom,		SceneLayers)
VALUES	('LEADER_MER_ODAENATHUS',		'LOC_LEADER_MER_ODAENATHUS_NAME',									'LEADER_DEFAULT',	4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,					Quote)
VALUES	('LEADER_MER_ODAENATHUS',			'LOC_PEDIA_LEADERS_PAGE_LEADER_MER_ODAENATHUS_QUOTE');	
-------------------------------------
-- HistoricalAgendas
-------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,				AgendaType)
VALUES	('LEADER_MER_ODAENATHUS',			'AGENDA_MER_ORIENTIS');
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,					TraitType)
VALUES	('LEADER_MER_ODAENATHUS',		'TRAIT_LEADER_MER_KING_OF_KINGS');
-------------------------------------
-- CivilizationTraits
-------------------------------------	
INSERT INTO CivilizationTraits	
		(CivilizationType,					TraitType)
VALUES	('CIVILIZATION_MER_PALMYRA',		'TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT'),
		('CIVILIZATION_MER_PALMYRA',		'TRAIT_CIVILIZATION_UNIT_MER_CLIBANARII'),
		('CIVILIZATION_MER_PALMYRA',		'TRAIT_CIVILIZATION_IMPROVEMENT_MER_FUNERARY_TOWERS');
-------------------------------------
-- FavoredReligions
-------------------------------------	
INSERT INTO FavoredReligions	
		(LeaderType,				ReligionType)
VALUES	('LEADER_MER_ODAENATHUS',			'RELIGION_CATHOLICISM');			
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,												Kind)
VALUES	('TRAIT_LEADER_MER_KING_OF_KINGS',						'KIND_TRAIT'		),
		('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',			'KIND_TRAIT'),
		('MODTYPE_MER_PEARL_OF_THE_DESERT_PLOT_YIELD',			'KIND_MODIFIER');
-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,										ModifierId									)
VALUES	--TRADE POSTS BOOST ALL TRADE
		('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_FOREIGN_FOOD'),
		('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_FOREIGN_PRODUCTION'),	
		('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_DOMESTIC_FOOD'),
		('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_DOMESTIC_PRODUCTION'),
		--OASIS ADJACENCY
		('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL_OASIS'),
		('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE_OASIS'),
		('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE_OASIS'),
		--DISTRICT GRANTS YIELD TO ADJACENT DESERT
		--('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL2'),
		--('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE2'),
		--('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE2'),
		--('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL3'),
		--('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE3'),
		--('TRAIT_CIVILIZATION_MER_PEARL_OF_THE_DESERT',				'MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE3'),
		--ODAENATHUS
		('TRAIT_LEADER_MER_KING_OF_KINGS',							'MODIFIER_MER_KING_OF_KINGS_GOVERNOR_PRODUCTION'),
		('TRAIT_LEADER_MER_KING_OF_KINGS',							'MODIFIER_MER_KING_OF_KINGS_GOVERNOR_GOLD'),
		('TRAIT_LEADER_MER_KING_OF_KINGS',							'MODIFIER_MER_KING_OF_KINGS_CAVALRY_COMMERCIAL'),
		('TRAIT_LEADER_MER_KING_OF_KINGS',							'MODIFIER_MER_KING_OF_KINGS_TRADE_POST_COMMERCIAL');

INSERT INTO	DistrictModifiers	
		(DistrictType,										ModifierId									)
VALUES	--DISTRICT GRANTS YIELD TO ADJACENT DESERT
		('DISTRICT_COMMERCIAL_HUB',						'MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL2'),
		('DISTRICT_THEATER',							'MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE2'),
		('DISTRICT_HOLY_SITE',							'MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE2'),
		('DISTRICT_COMMERCIAL_HUB',						'MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL3'),
		('DISTRICT_THEATER',							'MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE3'),
		('DISTRICT_HOLY_SITE',							'MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE3');
-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,							EffectType									)
VALUES	('MODTYPE_MER_PEARL_OF_THE_DESERT_PLOT_YIELD',	'COLLECTION_PLAYER_PLOT_YIELDS',		'EFFECT_ADJUST_PLOT_YIELD'	);
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,															ModifierType,														Repeatable,		Permanent,			SubjectRequirementSetId,	SubjectStackLimit			)
VALUES	--TRADE POSTS BOOST ALL TRADE
		('MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_FOREIGN_FOOD',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_POST_IN_FOREIGN_CITY',	0,			0,					null,		null		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_FOREIGN_PRODUCTION',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_POST_IN_FOREIGN_CITY',	0,			0,					null,	null		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_DOMESTIC_FOOD',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_POST_IN_OWN_CITY',		0,			0,					null,			null		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_DOMESTIC_PRODUCTION',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_POST_IN_OWN_CITY',		0,			0,					null,		null		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL_OASIS',			'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY',										0,			0,					null,		null		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE_OASIS',			'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY',											0,			0,					null,		null		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE_OASIS',			'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY',											0,			0,					null,		null		),
		--DISTRICT GRANTS YIELD TO ADJACENT DESERT
		--('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL2_ATTACH',		'MODIFIER_SINGLE_CITY_ATTACH_MODIFIER',										0,			0,					null,		0	),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL2',				'MODTYPE_MER_PEARL_OF_THE_DESERT_PLOT_YIELD',									1,			0,					'PLOT_IS_ADJACENT_TO_COMMERCIAL_REQSET',	6			),
		
		--('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE2_ATTACH',		'MODIFIER_SINGLE_CITY_ATTACH_MODIFIER',											0,			0,					null,		0	),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE2',				'MODTYPE_MER_PEARL_OF_THE_DESERT_PLOT_YIELD',											1,			0,					'PLOT_IS_ADJACENT_TO_THEATRE_REQSET',		6		),
		
		--('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE2_ATTACH',		'MODIFIER_SINGLE_CITY_ATTACH_MODIFIER',											0,			0,					null,		0	),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE2',				'MODTYPE_MER_PEARL_OF_THE_DESERT_PLOT_YIELD',											1,				0,					'PLOT_IS_ADJACENT_TO_HOLYSITE_REQSET',	6			),
		
		--('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL3_ATTACH',		'MODIFIER_SINGLE_CITY_ATTACH_MODIFIER',										0,						0,					null,		0	),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL3',				'MODTYPE_MER_PEARL_OF_THE_DESERT_PLOT_YIELD',									1,				0,					'PLOT_IS_ADJACENT_TO_COMMERCIAL_REQSET',	6			),
		
		--('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE3_ATTACH',		'MODIFIER_SINGLE_CITY_ATTACH_MODIFIER',											0,					0,					null,		0	),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE3',				'MODTYPE_MER_PEARL_OF_THE_DESERT_PLOT_YIELD',											1,			0,					'PLOT_IS_ADJACENT_TO_THEATRE_REQSET',		6		),
		
		--('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE3_ATTACH',		'MODIFIER_SINGLE_CITY_ATTACH_MODIFIER',											0,			0,					null,		0	),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE3',				'MODTYPE_MER_PEARL_OF_THE_DESERT_PLOT_YIELD',											1,			0,					'PLOT_IS_ADJACENT_TO_HOLYSITE_REQSET',		6		),
		--ODAENATHUS
		('MODIFIER_MER_KING_OF_KINGS_GOVERNOR_PRODUCTION',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER_PER_GOVERNOR_TITLE',						0,			0,		null,		null		),
		('MODIFIER_MER_KING_OF_KINGS_GOVERNOR_GOLD',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER_PER_GOVERNOR_TITLE',							0,			0,		null,		null		),
		('MODIFIER_MER_KING_OF_KINGS_CAVALRY_COMMERCIAL',	'MODIFIER_PLAYER_CITIES_GRANT_UNIT_BY_CLASS',												0,			1,					'CITY_HAS_MARKET_REQSET',		null		),
		('MODIFIER_MER_KING_OF_KINGS_TRADE_POST_COMMERCIAL',	'MODIFIER_PLAYER_CITIES_GRANT_TRADING_POST',											0,			1,					'CITY_HAS_MARKET_REQSET',		null		);
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,															Name,						Value	)
VALUES	--TRADE POSTS BOOST ALL TRADE
		('MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_FOREIGN_FOOD',			'YieldType',				'YIELD_FOOD'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_FOREIGN_FOOD',			'Amount',					1		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_FOREIGN_PRODUCTION',	'YieldType',				'YIELD_PRODUCTION'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_FOREIGN_PRODUCTION',	'Amount',					1		),

		('MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_DOMESTIC_FOOD',			'YieldType',				'YIELD_FOOD'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_DOMESTIC_FOOD',			'Amount',					1		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_DOMESTIC_PRODUCTION',	'YieldType',				'YIELD_PRODUCTION'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_TRADING_POST_DOMESTIC_PRODUCTION',	'Amount',					1		),
		--OASIS ADJACENCY
		('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL_OASIS',				'DistrictType',				'DISTRICT_COMMERCIAL_HUB'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL_OASIS',				'FeatureType',				'FEATURE_OASIS'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL_OASIS',				'YieldType',				'YIELD_GOLD'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL_OASIS',				'Amount',				2		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL_OASIS',				'Description',				'LOC_DISTRICT_OASIS_GOLD'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE_OASIS',				'DistrictType',				'DISTRICT_THEATER'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE_OASIS',				'FeatureType',				'FEATURE_OASIS'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE_OASIS',				'YieldType',				'YIELD_CULTURE'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE_OASIS',				'Amount',				2		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE_OASIS',				'Description',				'LOC_DISTRICT_OASIS_CULTURE'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE_OASIS',				'DistrictType',				'DISTRICT_HOLY_SITE'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE_OASIS',				'FeatureType',				'FEATURE_OASIS'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE_OASIS',				'YieldType',				'YIELD_FAITH'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE_OASIS',				'Amount',				2		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE_OASIS',				'Description',				'LOC_DISTRICT_OASIS_FAITH'		),
		--DISTRICT GRANTS YIELD TO ADJACENT DESERT
		--('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL2_ATTACH',		'ModifierId',				'MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL2'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL2',			'YieldType',					'YIELD_GOLD'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL2',			'Amount',						1		),

		--('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE2_ATTACH',		'ModifierId',				'MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE2'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE2',			'YieldType',					'YIELD_FAITH'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE2',			'Amount',						1		),

		--('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE2_ATTACH',		'ModifierId',				'MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE2'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE2',			'YieldType',					'YIELD_CULTURE'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE2',			'Amount',						1		),

		--('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL3_ATTACH',		'ModifierId',				'MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL3'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL3',			'YieldType',					'YIELD_FOOD'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_COMMERCIAL3',			'Amount',						1		),

		--('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE3_ATTACH',		'ModifierId',				'MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE3'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE3',			'YieldType',					'YIELD_FOOD'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_HOLYSITE3',			'Amount',						1		),

		--('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE3_ATTACH',		'ModifierId',				'MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE3'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE3',			'YieldType',					'YIELD_FOOD'		),
		('MODIFIER_MER_PEARL_OF_THE_DESERT_THEATRE3',			'Amount',						1		),
		--ODAENATHUS
		('MODIFIER_MER_KING_OF_KINGS_GOVERNOR_PRODUCTION',			'YieldType',					'YIELD_PRODUCTION'		),
		('MODIFIER_MER_KING_OF_KINGS_GOVERNOR_PRODUCTION',			'Amount',						2		),

		('MODIFIER_MER_KING_OF_KINGS_GOVERNOR_GOLD',			'YieldType',					'YIELD_GOLD'		),
		('MODIFIER_MER_KING_OF_KINGS_GOVERNOR_GOLD',			'Amount',						2		),

		('MODIFIER_MER_KING_OF_KINGS_CAVALRY_COMMERCIAL',			'UnitPromotionClassType',		'PROMOTION_CLASS_HEAVY_CAVALRY'		);
--------------------------------------------------------------------------------------------------------------------------
-- Requirements
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Requirements 			
		(RequirementId,									RequirementType,								Inverse )
VALUES	('PLOT_IS_COMMERCIAL_OASIS_REQ',				'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES',	0	),
		('PLOT_IS_ADJACENT_TO_COMMERCIAL_REQ',			'REQUIREMENT_PLOT_ADJACENT_TO_OWNER',	0	),
		('PLOT_IS_ADJACENT_TO_THEATRE_REQ',				'REQUIREMENT_PLOT_ADJACENT_TO_OWNER',	0	),
		('PLOT_IS_ADJACENT_TO_HOLYSITE_REQ',			'REQUIREMENT_PLOT_ADJACENT_TO_OWNER',	0	),
		('CITY_HAS_MARKET_REQ',							'REQUIREMENT_CITY_HAS_BUILDING',	0	),

		('MER_IS_PALMYRA_REQ',							'REQUIREMENT_PLAYER_TYPE_MATCHES',	0	);
--------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	('PLOT_IS_COMMERCIAL_OASIS_REQSET',						'REQUIREMENTSET_TEST_ALL'),
		('PLOT_IS_ADJACENT_TO_COMMERCIAL_REQSET',				'REQUIREMENTSET_TEST_ALL'),
		('PLOT_IS_ADJACENT_TO_THEATRE_REQSET',					'REQUIREMENTSET_TEST_ALL'),
		('PLOT_IS_ADJACENT_TO_HOLYSITE_REQSET',					'REQUIREMENTSET_TEST_ALL'),
		('CITY_HAS_MARKET_REQSET',								'REQUIREMENTSET_TEST_ALL');
--------------------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('PLOT_IS_COMMERCIAL_OASIS_REQSET',				'PLOT_IS_COMMERCIAL_OASIS_REQ'),
		('PLOT_IS_ADJACENT_TO_COMMERCIAL_REQSET',		'PLOT_IS_ADJACENT_TO_COMMERCIAL_REQ'),
		('PLOT_IS_ADJACENT_TO_COMMERCIAL_REQSET',		'PETRA_YIELD_MODIFIER_REQUIRES_PLOT_HAS_DESERT'),
		('PLOT_IS_ADJACENT_TO_COMMERCIAL_REQSET',		'REQUIRES_PLOT_HAS_NO_FLOODPLAINS'),
		('PLOT_IS_ADJACENT_TO_COMMERCIAL_REQSET',		'MER_IS_PALMYRA_REQ'),
		('PLOT_IS_ADJACENT_TO_THEATRE_REQSET',		'PLOT_IS_ADJACENT_TO_THEATRE_REQ'),
		('PLOT_IS_ADJACENT_TO_THEATRE_REQSET',		'PETRA_YIELD_MODIFIER_REQUIRES_PLOT_HAS_DESERT'),
		('PLOT_IS_ADJACENT_TO_THEATRE_REQSET',		'REQUIRES_PLOT_HAS_NO_FLOODPLAINS'),
		('PLOT_IS_ADJACENT_TO_THEATRE_REQSET',		'MER_IS_PALMYRA_REQ'),
		('PLOT_IS_ADJACENT_TO_HOLYSITE_REQSET',		'PLOT_IS_ADJACENT_TO_HOLYSITE_REQ'),
		('PLOT_IS_ADJACENT_TO_HOLYSITE_REQSET',		'PETRA_YIELD_MODIFIER_REQUIRES_PLOT_HAS_DESERT'),
		('PLOT_IS_ADJACENT_TO_HOLYSITE_REQSET',		'REQUIRES_PLOT_HAS_NO_FLOODPLAINS'),
		('PLOT_IS_ADJACENT_TO_HOLYSITE_REQSET',		'MER_IS_PALMYRA_REQ'),
		('CITY_HAS_MARKET_REQSET',					'CITY_HAS_MARKET_REQ');
--------------------------------------------------------------------------------------------------------------------------
-- RequirementArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,					Value)
VALUES	('PLOT_IS_COMMERCIAL_OASIS_REQ',				'FeatureType',			'FEATURE_OASIS'	),
		('PLOT_IS_COMMERCIAL_OASIS_REQ',				'MinRange',				1	),			
		('PLOT_IS_COMMERCIAL_OASIS_REQ',				'MaxRange',				1	),
		--('PLOT_IS_ADJACENT_TO_COMMERCIAL_REQ',			'DistrictType',			'DISTRICT_COMMERCIAL_HUB'	),
		('PLOT_IS_ADJACENT_TO_COMMERCIAL_REQ',			'MinRange',				1	),			
		('PLOT_IS_ADJACENT_TO_COMMERCIAL_REQ',			'MaxRange',				1	),
		--('PLOT_IS_ADJACENT_TO_THEATRE_REQ',			'DistrictType',			'DISTRICT_THEATER'	),
		('PLOT_IS_ADJACENT_TO_THEATRE_REQ',			'MinRange',				1	),			
		('PLOT_IS_ADJACENT_TO_THEATRE_REQ',			'MaxRange',				1	),
		--('PLOT_IS_ADJACENT_TO_HOLYSITE_REQ',			'DistrictType',			'DISTRICT_HOLY_SITE'	),
		('PLOT_IS_ADJACENT_TO_HOLYSITE_REQ',			'MinRange',				1	),			
		('PLOT_IS_ADJACENT_TO_HOLYSITE_REQ',			'MaxRange',				1	),
		('CITY_HAS_MARKET_REQ',							'BuildingType',				'BUILDING_MARKET'	),

		('MER_IS_PALMYRA_REQ',							'CivilizationType',				'CIVILIZATION_MER_PALMYRA'	);	
--==========================================================================================================================
-- AGENDAS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_MER_ORIENTIS',		'KIND_TRAIT');			
-------------------------------------			
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,							Name,									Description)
VALUES	('AGENDA_MER_ORIENTIS',			'LOC_AGENDA_MER_ORIENTIS_NAME',	'LOC_AGENDA_MER_ORIENTIS_DESCRIPTION');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,					Description)
VALUES	('TRAIT_AGENDA_MER_ORIENTIS',		'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');	
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,							TraitType)
VALUES	('AGENDA_MER_ORIENTIS',			'TRAIT_AGENDA_MER_ORIENTIS');	
-------------------------------------		
-- TraitModifiers		
-------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_AGENDA_MER_ORIENTIS',		'AGENDA_MER_ORIENTIS_SAME_GOVERNMENT'),
		('TRAIT_AGENDA_MER_ORIENTIS',		'AGENDA_MER_ORIENTIS_DIFF_GOVERNMENT');
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,							ModifierType,										SubjectRequirementSetId)
VALUES	('AGENDA_MER_ORIENTIS_SAME_GOVERNMENT',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'PLAYER_SAME_GOVERNMENT_NEIGHBOUR'),
		('AGENDA_MER_ORIENTIS_DIFF_GOVERNMENT',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'PLAYER_DIFF_GOVERNMENT_REQSET');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value,													Extra,				Type)
VALUES	('AGENDA_MER_ORIENTIS_SAME_GOVERNMENT',		'InitialValue',					7,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_ORIENTIS_SAME_GOVERNMENT',		'StatementKey',					'LOC_DIPLO_WARNING_LEADER_MER_ODAENATHUS_REASON_SAME_GOVERNMENT',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_ORIENTIS_SAME_GOVERNMENT',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_ORIENTIS_SAME_GOVERNMENT',		null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_ORIENTIS_DIFF_GOVERNMENT',		'InitialValue',					-7,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_ORIENTIS_DIFF_GOVERNMENT',		'StatementKey',					'LOC_DIPLO_WARNING_LEADER_MER_ODAENATHUS_REASON_DIFF_GOVERNMENT',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_ORIENTIS_DIFF_GOVERNMENT',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_ORIENTIS_DIFF_GOVERNMENT',		null,				'ARGTYPE_IDENTITY');
-------------------------------------		
-- ModifierStrings		
-------------------------------------			
INSERT INTO ModifierStrings			
		(ModifierId,											Context,	Text)
VALUES	('AGENDA_MER_ORIENTIS_SAME_GOVERNMENT',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_MER_ORIENTIS_DIFF_GOVERNMENT',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
--------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('PLAYER_SAME_GOVERNMENT_NEIGHBOUR',	'REQUIREMENTSET_TEST_ALL'),
		('PLAYER_DIFF_GOVERNMENT_REQSET',		'REQUIREMENTSET_TEST_ALL');
--------------------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('PLAYER_SAME_GOVERNMENT_NEIGHBOUR',	'REQUIRES_NOT_AT_WAR_WITH_NEIGHBORS'),
		('PLAYER_SAME_GOVERNMENT_NEIGHBOUR',	'REQUIRES_HAS_SAME_GOVERNMENT'),
		('PLAYER_DIFF_GOVERNMENT_REQSET',	'REQUIRES_HAS_DIFFERENT_GOVERNMENT'),	
		('PLAYER_DIFF_GOVERNMENT_REQSET',	'REQUIRES_AT_WAR_WITH_NEIGHBORS');			
--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- CivilizationLeaders
-------------------------------------	
INSERT INTO CivilizationLeaders 
        (CivilizationType,			LeaderType,		CapitalName)
VALUES  ('CIVILIZATION_MER_PALMYRA',	'LEADER_MER_ODAENATHUS',	'LOC_CITY_NAME_MER_PALMYRA_1');
--==========================================================================================================================
--==========================================================================================================================
