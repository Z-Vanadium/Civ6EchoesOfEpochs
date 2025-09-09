--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				BackgroundImage,						ForegroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_MER_CHRISTIAN_IV',	'LEADER_DEFAULT_BACKGROUND',				'LEADER_MER_CHRISTIAN_IV_NEUTRAL',					1);	

--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,												Kind)
VALUES	('LEADER_MER_CHRISTIAN_IV',									'KIND_LEADER'),
		('TRAIT_CIVILIZATION_BUILDING_MER_TOJHUS',			'KIND_TRAIT'),	
		('TRAIT_CIVILIZATION_UNIT_MER_FODFOLK',			'KIND_TRAIT'),	
		('CIVILIZATION_MER_DENMARK',					'KIND_CIVILIZATION');
		
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,						Name,					Description)
VALUES	('TRAIT_LEADER_MER_STELLABURGIS_HAFNIENS',					'LOC_TRAIT_LEADER_MER_STELLABURGIS_HAFNIENS_NAME',		'LOC_TRAIT_LEADER_MER_STELLABURGIS_HAFNIENS_DESCRIPTION'),
		('TRAIT_CIVILIZATION_UNIT_MER_FODFOLK',					'LOC_TRAIT_CIVILIZATION_UNIT_MER_FODFOLK_NAME',		'LOC_TRAIT_CIVILIZATION_UNIT_MER_FODFOLK_DESCRIPTION'),
		('TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION',		'LOC_TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION_NAME',		'LOC_TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION_DESCRIPTION'),
		('TRAIT_CIVILIZATION_BUILDING_MER_TOJHUS',				'LOC_TRAIT_CIVILIZATION_BUILDING_MER_TOJHUS_NAME',		'LOC_TRAIT_CIVILIZATION_BUILDING_MER_TOJHUS_DESCRIPTION');		
-------------------------------------
-- Civilizations
-------------------------------------	
INSERT INTO Civilizations	
		(CivilizationType,					Name,												Description,									Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth)
VALUES	('CIVILIZATION_MER_DENMARK',	'LOC_CIVILIZATION_MER_DENMARK_NAME',			'LOC_CIVILIZATION_MER_DENMARK_DESCRIPTION',		'LOC_CIVILIZATION_MER_DENMARK_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	'10'     			);	
-------------------------------------
-- StartBias
-------------------------------------	
INSERT INTO StartBiasTerrains
		(CivilizationType,						TerrainType,							Tier)
VALUES	('CIVILIZATION_MER_DENMARK',				'TERRAIN_COAST',						'3'	);
INSERT INTO StartBiasResources
		(CivilizationType,						ResourceType,							Tier)
VALUES	('CIVILIZATION_MER_DENMARK',				'RESOURCE_FISH',						'3'	);
----------------------------------------------------------------------------------------------------------------------------			
-- CityNames			
----------------------------------------------------------------------------------------------------------------------------		
INSERT OR REPLACE INTO CityNames
		(CivilizationType,				LeaderType,						CityName)
VALUES	('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_COPENHAGEN'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_AARHUS'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_ODENSE'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_AALBORG'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_ROSKILDE'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_RANDERS'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_VIBORG'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_HORSENS'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_HELSINGOR'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_NYKOBING'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_HADERSLEV'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_RIBE'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_KOLDING'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_VEJLE'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_SVENDBORG'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_NAESTVED'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_AABENRAA'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_VARDE'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_HJORRING'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_SLAGELSE'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_RINGSTED'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_ESBJERG'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_FREDERICIA'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_HORSHOLM'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_HERNING'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_FREDERIKSHAVN'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_HOLBAEK'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_NYBORG'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_SONDERBORG'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_KOGE'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_SILKEBORG'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_HILLEROD'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_SKANDERBORG'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_NAKSKOV'),
		('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',		'LOC_CITY_NAME_MER_RONNE');
----------------------------------------------------------------------------------------------------------------------------
-- CivilizationCitizenNames
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationCitizenNames	
		(CivilizationType,			CitizenName,								Female,		Modern)
VALUES	('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MALE_1',				0,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MALE_2',				0,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MALE_3',				0,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MALE_4',				0,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MALE_5',				0,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MALE_6',				0,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MALE_7',				0,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MALE_8',				0,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MALE_9',				0,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MALE_10',			0,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_FEMALE_1',			1,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_FEMALE_2',			1,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_FEMALE_3',			1,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_FEMALE_4',			1,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_FEMALE_5',			1,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_FEMALE_6',			1,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_FEMALE_7',			1,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_FEMALE_8',			1,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_FEMALE_9',			1,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_FEMALE_10',			1,			0),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_MALE_1',		0,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_MALE_2',		0,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_MALE_3',		0,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_MALE_4',		0,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_MALE_5',		0,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_MALE_6',		0,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_MALE_7',		0,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_MALE_8',		0,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_MALE_9',		0,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_MALE_10',		0,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_FEMALE_1',	1,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_FEMALE_2',	1,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_FEMALE_3',	1,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_FEMALE_4',	1,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_FEMALE_5',	1,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_FEMALE_6',	1,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_FEMALE_7',	1,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_FEMALE_8',	1,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_FEMALE_9',	1,			1),
		('CIVILIZATION_MER_DENMARK',	'LOC_CITIZEN_MER_DENMARK_MODERN_FEMALE_10',	1,			1);	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,												InheritFrom,		SceneLayers)
VALUES	('LEADER_MER_CHRISTIAN_IV',		'LOC_LEADER_MER_CHRISTIAN_IV_NAME',					'LEADER_DEFAULT',	4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,					Quote)
VALUES	('LEADER_MER_CHRISTIAN_IV',			'LOC_PEDIA_LEADERS_PAGE_LEADER_MER_CHRISTIAN_IV_QUOTE');	
-------------------------------------
-- HistoricalAgendas
-------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,				AgendaType)
VALUES	('LEADER_MER_CHRISTIAN_IV',			'AGENDA_MER_INQUISITIVE_ZEAL');
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,					TraitType)
VALUES	('LEADER_MER_CHRISTIAN_IV',		'TRAIT_LEADER_MER_STELLABURGIS_HAFNIENS');
-------------------------------------
-- CivilizationTraits
-------------------------------------	
INSERT INTO CivilizationTraits	
		(CivilizationType,					TraitType)
VALUES	('CIVILIZATION_MER_DENMARK',		'TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION'),
		('CIVILIZATION_MER_DENMARK',		'TRAIT_CIVILIZATION_UNIT_MER_FODFOLK'),
		('CIVILIZATION_MER_DENMARK',		'TRAIT_CIVILIZATION_BUILDING_MER_TOJHUS');
		
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,												Kind)
VALUES	('TRAIT_LEADER_MER_STELLABURGIS_HAFNIENS',						'KIND_TRAIT'		),
		('TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION',			'KIND_TRAIT'),
		('MODTYPE_MER_BALTIC_PASSING_THROUGH',			'KIND_MODIFIER');
-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,										ModifierId									)
VALUES	('TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION',		'MODIFIER_MER_BALTIC_SEA_DOMINION_COMMERCIAL_GOLD'		),
		('TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION',		'MODIFIER_MER_BALTIC_SEA_DOMINION_COMMERCIAL_PRODUCTION'		),
		('TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION',		'MODIFIER_MER_BALTIC_SEA_DOMINION_HARBOR_GOLD'		),
		('TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION',		'MODIFIER_MER_BALTIC_SEA_DOMINION_HARBOR_PRODUCTION'		),
		('TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION',		'MODIFIER_MER_BALTIC_SEA_DOMINION_CANAL_GOLD'		),
		('TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION',		'MODIFIER_MER_BALTIC_SEA_DOMINION_CANAL_PRODUCTION'		),
		('TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION',		'MODIFIER_MER_BALTIC_SEA_DOMINION_SEA_RESOURCE_PRODUCTION'		),
		('TRAIT_CIVILIZATION_MER_BALTIC_SEA_DOMINION',		'MODIFIER_MER_BALTIC_SEA_DOMINION_SEA_RESOURCE_GOLD'		),
		-----------------------------------------------

		('TRAIT_LEADER_MER_STELLABURGIS_HAFNIENS',		'MODIFIER_MER_STELLABURGIS_HAFNIENS_SCIENCE'		),
		('TRAIT_LEADER_MER_STELLABURGIS_HAFNIENS',		'MODIFIER_MER_STELLABURGIS_HAFNIENS_ENCAMPMENT'		);
-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,					EffectType									)
VALUES	('MODTYPE_MER_BALTIC_PASSING_THROUGH',		'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_CITY_YIELD_FROM_FOREIGN_TRADE_ROUTES_PASSING_THROUGH'	);
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,															ModifierType,										SubjectRequirementSetId						)
VALUES	('MODIFIER_MER_BALTIC_SEA_DOMINION_COMMERCIAL_GOLD',				'MODTYPE_MER_BALTIC_PASSING_THROUGH',			'MER_REQUIRES_DENMARK_HAS_COMMERCIAL'											),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_COMMERCIAL_PRODUCTION',		'MODTYPE_MER_BALTIC_PASSING_THROUGH',			'MER_REQUIRES_DENMARK_HAS_COMMERCIAL'											),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_HARBOR_GOLD',					'MODTYPE_MER_BALTIC_PASSING_THROUGH',			'MER_REQUIRES_DENMARK_HAS_HARBOR'										),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_HARBOR_PRODUCTION',					'MODTYPE_MER_BALTIC_PASSING_THROUGH',			'MER_REQUIRES_DENMARK_HAS_HARBOR'				),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_CANAL_GOLD',					'MODTYPE_MER_BALTIC_PASSING_THROUGH',			'MER_REQUIRES_DENMARK_HAS_CANAL'												),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_CANAL_PRODUCTION',					'MODTYPE_MER_BALTIC_PASSING_THROUGH',		'MER_REQUIRES_DENMARK_HAS_CANAL'								),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_SEA_RESOURCE_PRODUCTION',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'MER_PLOT_REQUIRES_FISHING_BOAT_OR_OIL_RIG'				),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_SEA_RESOURCE_GOLD',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'MER_PLOT_REQUIRES_FISHING_BOAT_OR_OIL_RIG'				),
		-----------------------------------------------
		
		('MODIFIER_MER_STELLABURGIS_HAFNIENS_SCIENCE',	'MODIFIER_PLAYER_CITIES_GRANT_YIELD_PER_BUILDING_COST',			null											),
		('MODIFIER_MER_STELLABURGIS_HAFNIENS_ENCAMPMENT',	'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',			null											),
		-----------------------------------------------
		('TOJHUS_BUILDING_DISCOUNT',					'MODIFIER_CITY_ADJUST_STRATEGIC_RESOURCE_REQUIREMENT_MODIFIER',			null											),
		('TOJHUS_BUILDING_STOCKPILE',					'MODIFIER_PLAYER_ADJUST_RESOURCE_STOCKPILE_CAP',			null											);
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,														Name,						Value	)
VALUES	('MODIFIER_MER_BALTIC_SEA_DOMINION_COMMERCIAL_GOLD',				'YieldType',				'YIELD_GOLD'		),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_COMMERCIAL_GOLD',				'Amount',					2		),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_COMMERCIAL_PRODUCTION',				'YieldType',				'YIELD_PRODUCTION'		),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_COMMERCIAL_PRODUCTION',				'Amount',					1		),

		('MODIFIER_MER_BALTIC_SEA_DOMINION_HARBOR_GOLD',				'YieldType',				'YIELD_GOLD'		),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_HARBOR_GOLD',				'Amount',					2		),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_HARBOR_PRODUCTION',				'YieldType',				'YIELD_PRODUCTION'		),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_HARBOR_PRODUCTION',				'Amount',					1		),

		('MODIFIER_MER_BALTIC_SEA_DOMINION_CANAL_GOLD',				'YieldType',				'YIELD_GOLD'		),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_CANAL_GOLD',				'Amount',					2		),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_CANAL_PRODUCTION',				'YieldType',				'YIELD_PRODUCTION'		),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_CANAL_PRODUCTION',				'Amount',					1		),

		('MODIFIER_MER_BALTIC_SEA_DOMINION_SEA_RESOURCE_PRODUCTION',			'YieldType',				'YIELD_PRODUCTION'		),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_SEA_RESOURCE_PRODUCTION',			'Amount',					1		),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_SEA_RESOURCE_GOLD',			'YieldType',				'YIELD_GOLD'		),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_SEA_RESOURCE_GOLD',			'Amount',					1		),

		-----------------------------------------------

		('MODIFIER_MER_STELLABURGIS_HAFNIENS_SCIENCE',		'BuildingProductionPercent',	10	),
		('MODIFIER_MER_STELLABURGIS_HAFNIENS_SCIENCE',		'IncludeWonder',					1		),
		('MODIFIER_MER_STELLABURGIS_HAFNIENS_SCIENCE',		'YieldType',					'YIELD_SCIENCE'		),
		
		('MODIFIER_MER_STELLABURGIS_HAFNIENS_ENCAMPMENT',		'Amount',	1	),
		('MODIFIER_MER_STELLABURGIS_HAFNIENS_ENCAMPMENT',		'DistrictType',					'DISTRICT_CAMPUS'		),
		('MODIFIER_MER_STELLABURGIS_HAFNIENS_ENCAMPMENT',		'TilesRequired',					1		),
		('MODIFIER_MER_STELLABURGIS_HAFNIENS_ENCAMPMENT',		'YieldType',					'YIELD_SCIENCE'		),
		('MODIFIER_MER_STELLABURGIS_HAFNIENS_ENCAMPMENT',		'Description',					'LOC_STELLABURGIS_ADJACENCY'		),

		-----------------------------------------------
		
		('TOJHUS_BUILDING_DISCOUNT',			'Amount',					10		),
		('TOJHUS_BUILDING_STOCKPILE',			'Amount',					10		);
--------------------------------------------------------------------------------------------------------------------------
-- Requirements
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Requirements 			
		(RequirementId,										RequirementType,								Inverse )
VALUES	('MER_DENMARK_REQUIRES_COMMERCIAL_REQ',				'REQUIREMENT_CITY_HAS_DISTRICT',					0	),
		('MER_DENMARK_REQUIRES_HARBOR_REQ',					'REQUIREMENT_CITY_HAS_DISTRICT',					0	),
		('MER_DENMARK_REQUIRES_CANAL_REQ',					'REQUIREMENT_CITY_HAS_DISTRICT',					0	),
		('MER_PLOT_REQUIRES_OIL_RIG_REQ',					'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES',		0	),
		('MER_PLOT_REQUIRES_FISHING_BOAT_REQ',				'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES',		0	);

--------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('MER_REQUIRES_DENMARK_HAS_HARBOR',				'REQUIREMENTSET_TEST_ALL'),
		('MER_REQUIRES_DENMARK_HAS_CANAL',				'REQUIREMENTSET_TEST_ALL'),
		('MER_REQUIRES_DENMARK_HAS_COMMERCIAL',			'REQUIREMENTSET_TEST_ALL'),
		('MER_PLOT_REQUIRES_FISHING_BOAT_OR_OIL_RIG',	'REQUIREMENTSET_TEST_ANY');
--------------------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('MER_REQUIRES_DENMARK_HAS_HARBOR',				'MER_DENMARK_REQUIRES_HARBOR_REQ'),
		('MER_REQUIRES_DENMARK_HAS_CANAL',				'MER_DENMARK_REQUIRES_CANAL_REQ'),
		('MER_REQUIRES_DENMARK_HAS_COMMERCIAL',			'MER_DENMARK_REQUIRES_COMMERCIAL_REQ'),
		('MER_PLOT_REQUIRES_FISHING_BOAT_OR_OIL_RIG',	'MER_PLOT_REQUIRES_FISHING_BOAT_REQ'),
		('MER_PLOT_REQUIRES_FISHING_BOAT_OR_OIL_RIG',	'MER_PLOT_REQUIRES_OIL_RIG_REQ');					
--------------------------------------------------------------------------------------------------------------------------
-- RequirementArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
            (RequirementId,								   Name,										  Value)
VALUES      ('MER_DENMARK_REQUIRES_CANAL_REQ',				'DistrictType',		 'DISTRICT_CANAL'),
			('MER_DENMARK_REQUIRES_HARBOR_REQ',			 'DistrictType',	   	'DISTRICT_HARBOR'),
			('MER_DENMARK_REQUIRES_COMMERCIAL_REQ',		 'DistrictType',		 'DISTRICT_COMMERCIAL_HUB'),
			('MER_PLOT_REQUIRES_OIL_RIG_REQ',					 'ImprovementType',		 'IMPROVEMENT_FISHING_BOATS'),
			('MER_PLOT_REQUIRES_FISHING_BOAT_REQ',					 'ImprovementType',		 'IMPROVEMENT_OFFSHORE_OIL_RIG');



--==========================================================================================================================
-- AGENDAS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_MER_INQUISITIVE_ZEAL',		'KIND_TRAIT');			
-------------------------------------			
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,							Name,									Description)
VALUES	('AGENDA_MER_INQUISITIVE_ZEAL',			'LOC_AGENDA_MER_INQUISITIVE_ZEAL_NAME',	'LOC_AGENDA_MER_INQUISITIVE_ZEAL_DESCRIPTION');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,					Description)
VALUES	('TRAIT_AGENDA_MER_INQUISITIVE_ZEAL',		'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');	
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,							TraitType)
VALUES	('AGENDA_MER_INQUISITIVE_ZEAL',			'TRAIT_AGENDA_MER_INQUISITIVE_ZEAL');	
-------------------------------------		
-- TraitModifiers		
-------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_AGENDA_MER_INQUISITIVE_ZEAL',		'AGENDA_MER_INQUISITIVE_ZEAL_SCIENCE'),
		('TRAIT_AGENDA_MER_INQUISITIVE_ZEAL',		'AGENDA_MER_INQUISITIVE_ZEAL_WONDERS'),
		('TRAIT_AGENDA_MER_INQUISITIVE_ZEAL',		'AGENDA_MER_INQUISITIVE_ZEAL_GREAT_PEOPLE');
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,										ModifierType,										SubjectRequirementSetId)
VALUES	('AGENDA_MER_INQUISITIVE_ZEAL_SCIENCE',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'PLAYER_HAS_HIGH_SCIENCE'),
		('AGENDA_MER_INQUISITIVE_ZEAL_WONDERS',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'PLAYER_LEADS_WONDERS'),
		('AGENDA_MER_INQUISITIVE_ZEAL_GREAT_PEOPLE',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'PLAYER_LEADS_GREAT_PEOPLE');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,							Value,													Extra,				Type)
VALUES	('AGENDA_MER_INQUISITIVE_ZEAL_SCIENCE',		'InitialValue',					10,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_INQUISITIVE_ZEAL_SCIENCE',		'StatementKey',					'LOC_DIPLO_KUDOS_LEADER_MER_CHRISTIAN_IV_REASON_SCIENCE',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_INQUISITIVE_ZEAL_SCIENCE',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_CHRISTIAN_IV_INQUISITIVE_ZEAL_SCIENCE',		null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_INQUISITIVE_ZEAL_WONDERS',				'InitialValue',					-5,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_INQUISITIVE_ZEAL_WONDERS',				'StatementKey',					'LOC_DIPLO_WARNING_LEADER_MER_CHRISTIAN_IV_REASON_WONDERS',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_INQUISITIVE_ZEAL_WONDERS',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_CHRISTIAN_IV_INQUISITIVE_ZEAL_WONDERS',		null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_INQUISITIVE_ZEAL_GREAT_PEOPLE',			'InitialValue',					-5,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_INQUISITIVE_ZEAL_GREAT_PEOPLE',			'StatementKey',					'LOC_DIPLO_WARNING_LEADER_MER_CHRISTIAN_IV_REASON_WONDERS',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_INQUISITIVE_ZEAL_GREAT_PEOPLE',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_CHRISTIAN_IV_INQUISITIVE_ZEAL_WONDERS',		null,				'ARGTYPE_IDENTITY');

-------------------------------------		
-- ModifierStrings		
-------------------------------------			
INSERT INTO ModifierStrings			
		(ModifierId,								Context,	Text)
VALUES	('MODIFIER_MER_BALTIC_SEA_DOMINION_COMMERCIAL_GOLD',		'Sample',	'LOC_MER_BALTIC_SEA_DOMINION_COMMERCIAL_GOLD'),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_COMMERCIAL_PRODUCTION',		'Sample',	'LOC_MER_BALTIC_SEA_DOMINION_COMMERCIAL_GOLD'),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_HARBOR_GOLD',		'Sample',	'LOC_MER_BALTIC_SEA_DOMINION_COMMERCIAL_GOLD'),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_HARBOR_PRODUCTION',		'Sample',	'LOC_MER_BALTIC_SEA_DOMINION_COMMERCIAL_GOLD'),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_CANAL_GOLD',		'Sample',	'LOC_MER_BALTIC_SEA_DOMINION_CANAL_GOLD'),
		('MODIFIER_MER_BALTIC_SEA_DOMINION_CANAL_PRODUCTION',		'Sample',	'LOC_MER_BALTIC_SEA_DOMINION_CANAL_PRODUCTION'),

		('AGENDA_MER_INQUISITIVE_ZEAL_SCIENCE',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_MER_INQUISITIVE_ZEAL_WONDERS',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_MER_INQUISITIVE_ZEAL_GREAT_PEOPLE',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');


--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- CivilizationLeaders
-------------------------------------	
INSERT INTO CivilizationLeaders 
        (CivilizationType,			LeaderType,		CapitalName)
VALUES  ('CIVILIZATION_MER_DENMARK',	'LEADER_MER_CHRISTIAN_IV',	'LOC_CITY_NAME_MER_COPENHAGEN');
--==========================================================================================================================
--==========================================================================================================================
