--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				BackgroundImage,						ForegroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_MER_KYIV_YAROSLAV',	'LEADER_NEUTRAL_BACKGROUND',				'LEADER_MER_KYIV_YAROSLAV_NEUTRAL',					1);	

--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,												Kind)
VALUES	('LEADER_MER_KYIV_YAROSLAV',									'KIND_LEADER'),
		('TRAIT_LEADER_MER_KYIV_RUSSKAYA_PRAVDA',			'KIND_TRAIT'),
		('TRAIT_CIVILIZATION_DISTRICT_MER_KYIV_VECHE',			'KIND_TRAIT'),	
		('TRAIT_CIVILIZATION_UNIT_MER_KYIV_DRUZHINA',			'KIND_TRAIT'),	
		('TRAIT_CIVILIZATION_MER_KYIV_VARANGIANS_TO_GREEKS',			'KIND_TRAIT'),
		('CIVILIZATION_MER_KYIVAN_RUS',					'KIND_CIVILIZATION');
		
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,						Name,					Description)
VALUES	('TRAIT_CIVILIZATION_UNIT_MER_KYIV_DRUZHINA',			'LOC_TRAIT_CIVILIZATION_UNIT_MER_KYIV_DRUZHINA_NAME',			'LOC_TRAIT_CIVILIZATION_UNIT_MER_KYIV_DRUZHINA_DESCRIPTION'),
		('TRAIT_CIVILIZATION_DISTRICT_MER_KYIV_VECHE',			'LOC_TRAIT_CIVILIZATION_DISTRICT_MER_KYIV_VECHE_NAME',			'LOC_TRAIT_CIVILIZATION_DISTRICT_MER_KYIV_VECHE_DESCRIPTION'),
		('TRAIT_CIVILIZATION_MER_KYIV_VARANGIANS_TO_GREEKS',	'LOC_TRAIT_CIVILIZATION_MER_KYIV_VARANGIANS_TO_GREEKS_NAME',	'LOC_TRAIT_CIVILIZATION_MER_KYIV_VARANGIANS_TO_GREEKS_DESCRIPTION'),
		('TRAIT_LEADER_MER_KYIV_RUSSKAYA_PRAVDA',				'LOC_TRAIT_LEADER_MER_KYIV_RUSSKAYA_PRAVDA_NAME',				'LOC_TRAIT_LEADER_MER_KYIV_RUSSKAYA_PRAVDA_DESCRIPTION');				
-------------------------------------
-- Civilizations
-------------------------------------	
INSERT INTO Civilizations	
		(CivilizationType,					Name,												Description,									Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth)
VALUES	('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CIVILIZATION_MER_KYIVAN_RUS_NAME',			'LOC_CIVILIZATION_MER_KYIVAN_RUS_DESCRIPTION',		'LOC_CIVILIZATION_MER_KYIVAN_RUS_IN_CITYECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	'10'     			);	
-------------------------------------
-- StartBias
-------------------------------------	
INSERT INTO StartBiasTerrains
		(CivilizationType,						TerrainType,					Tier)
VALUES	('CIVILIZATION_MER_KYIVAN_RUS',			'TERRAIN_PLAINS_HILLS',			'2'	),
		('CIVILIZATION_MER_KYIVAN_RUS',			'TERRAIN_PLAINS',				'1'	),
		('CIVILIZATION_MER_KYIVAN_RUS',			'TERRAIN_GRASS',				'2'	);
INSERT INTO StartBiasFeatures
		(CivilizationType,						FeatureType,							Tier)
VALUES	('CIVILIZATION_MER_KYIVAN_RUS',			'FEATURE_FOREST',						'2'	);
INSERT INTO StartBiasResources
		(CivilizationType,						ResourceType,							Tier)
VALUES	('CIVILIZATION_MER_KYIVAN_RUS',			'RESOURCE_FURS',						'3'	),
		('CIVILIZATION_MER_KYIVAN_RUS',			'RESOURCE_WHEAT',						'4'	);
INSERT INTO StartBiasRivers
		(CivilizationType,						Tier	)
VALUES	('CIVILIZATION_MER_KYIVAN_RUS',		'1'		);
----------------------------------------------------------------------------------------------------------------------------
-- CivilizationCityNames
----------------------------------------------------------------------------------------------------------------------------	
INSERT OR REPLACE INTO CityNames
		(CivilizationType,					CityName)
VALUES	('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_KYIV'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_CHERNIHIV'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_PEREIASLAV'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_NOVGOROD'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_VOLODYMYR'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_SMOLENSK'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_ROSTOV'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_SUZDAL'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_VOLODYMYR'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_POLOTSK'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_HALYCH'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_MUROM'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_TUROV'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_PINSK'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_TMUTARAKAN'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_MINSK'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_NOVHOROD_SIVERSKYI'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_PSKOV'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_VITEBSK'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_TEREBOVLIA'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_SLUTSK'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_DRUTSK'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_TRUBCHEVSK'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_ZASLAWYE'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_VYSHHOROD'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_KANIV'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_RYAZAN'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_KYIV_YAROSLAVL'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_KREMENETS'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_BREST'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_TOROPETS'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_KOROSTEN'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_STARODUB'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_YURYEV_(TARTU)'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_LUTSK'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_PRONSK'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_PUTYVL'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_DROHICZYN'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_LYUBECH'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_ORSHA'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_IZBORSK'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_ROMNY'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'LOC_CITY_NAME_MER_HUBYN');

----------------------------------------------------------------------------------------------------------------------------
-- CivilizationCitizenNames
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationCitizenNames	
		(CivilizationType,			CitizenName,								Female,		Modern)
VALUES	('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MALE_1',				0,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MALE_2',				0,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MALE_3',				0,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MALE_4',				0,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MALE_5',				0,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MALE_6',				0,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MALE_7',				0,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MALE_8',				0,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MALE_9',				0,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MALE_10',			0,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_FEMALE_1',			1,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_FEMALE_2',			1,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_FEMALE_3',			1,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_FEMALE_4',			1,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_FEMALE_5',			1,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_FEMALE_6',			1,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_FEMALE_7',			1,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_FEMALE_8',			1,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_FEMALE_9',			1,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_FEMALE_10',			1,			0),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_MALE_1',		0,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_MALE_2',		0,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_MALE_3',		0,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_MALE_4',		0,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_MALE_5',		0,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_MALE_6',		0,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_MALE_7',		0,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_MALE_8',		0,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_MALE_9',		0,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_MALE_10',		0,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_FEMALE_1',	1,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_FEMALE_2',	1,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_FEMALE_3',	1,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_FEMALE_4',	1,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_FEMALE_5',	1,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_FEMALE_6',	1,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_FEMALE_7',	1,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_FEMALE_8',	1,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_FEMALE_9',	1,			1),
		('CIVILIZATION_MER_KYIVAN_RUS',	'LOC_CITIZEN_MER_KYIVAN_RUS_MODERN_FEMALE_10',	1,			1);	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,												InheritFrom,		SceneLayers)
VALUES	('LEADER_MER_KYIV_YAROSLAV',		'LOC_LEADER_MER_KYIV_YAROSLAV_NAME',					'LEADER_DEFAULT',	4);	

INSERT INTO LeaderTraits	
		(LeaderType,						TraitType)
VALUES	('LEADER_MER_KYIV_YAROSLAV',		'TRAIT_LEADER_MER_KYIV_RUSSKAYA_PRAVDA');
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,					Quote)
VALUES	('LEADER_MER_KYIV_YAROSLAV',			'LOC_PEDIA_LEADERS_PAGE_LEADER_MER_KYIV_YAROSLAV_QUOTE');	
-------------------------------------
-- HistoricalAgendas
-------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,				AgendaType)
VALUES	('LEADER_MER_KYIV_YAROSLAV',			'AGENDA_MER_OLD_LAW');
-------------------------------------
-- CivilizationTraits
-------------------------------------	
INSERT INTO CivilizationTraits	
		(CivilizationType,					TraitType)
VALUES	('CIVILIZATION_MER_KYIVAN_RUS',		'TRAIT_CIVILIZATION_MER_KYIV_VARANGIANS_TO_GREEKS'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'TRAIT_CIVILIZATION_UNIT_MER_KYIV_DRUZHINA'),
		('CIVILIZATION_MER_KYIVAN_RUS',		'TRAIT_CIVILIZATION_DISTRICT_MER_KYIV_VECHE');
-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,														ModifierId									)
VALUES	('TRAIT_CIVILIZATION_MER_KYIV_VARANGIANS_TO_GREEKS',			'MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RIVER_POST'	),
		('TRAIT_CIVILIZATION_MER_KYIV_VARANGIANS_TO_GREEKS',			'MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RIVER_BORDERS'	),
		('TRAIT_CIVILIZATION_MER_KYIV_VARANGIANS_TO_GREEKS',			'MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_GOLD_DISTANT_TRADE'	),
		('TRAIT_CIVILIZATION_MER_KYIV_VARANGIANS_TO_GREEKS',			'MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_CULTURE_DISTANT_TRADE'	),

		('TRAIT_CIVILIZATION_MER_KYIV_VARANGIANS_TO_GREEKS',			'MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RESOURCE_GOLD_ATTACH'	),
		('TRAIT_CIVILIZATION_MER_KYIV_VARANGIANS_TO_GREEKS',			'MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_LUMBER_CAMPS_PRODUCTION_ATTACH'	),

		('TRAIT_LEADER_MER_KYIV_RUSSKAYA_PRAVDA',						'MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_CULTURE_BOMB'	),
		('TRAIT_LEADER_MER_KYIV_RUSSKAYA_PRAVDA',						'MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_ECONOMIC_FAVOR'	);

INSERT INTO	AllianceEffects	
		(AllianceType,				LevelRequirement,			ModifierId						)
VALUES	('ALLIANCE_CULTURAL',		1,							'MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH_ATTACH'		),
		('ALLIANCE_RESEARCH',		1,							'MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH_ATTACH'		),
		('ALLIANCE_MILITARY',		1,							'MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH_ATTACH'		),
		('ALLIANCE_ECONOMIC',		1,							'MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH_ATTACH'		),
		('ALLIANCE_RELIGIOUS',		1,							'MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH_ATTACH'		);
-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------
INSERT INTO Types	
		(Type,												Kind)
VALUES	('MER_RUSSKAYA_PRAVDA_STRENGTH_ATTACH',		'KIND_MODIFIER'),
		('MER_VARANGIANS_TO_THE_GREEKS_PLOT',		'KIND_MODIFIER');		

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,						EffectType									)
VALUES	('MER_RUSSKAYA_PRAVDA_STRENGTH_ATTACH',			'COLLECTION_ALLIANCE_PLAYERS',	'EFFECT_ATTACH_MODIFIER'	),
		('MER_VARANGIANS_TO_THE_GREEKS_PLOT',		'COLLECTION_CITY_PLOT_YIELDS',		'EFFECT_ADJUST_PLOT_YIELD'	);
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,														ModifierType,											Repeatable,	OwnerRequirementSetId,		SubjectRequirementSetId						)
VALUES	('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RIVER_POST',				'MODIFIER_PLAYER_CITIES_GRANT_TRADING_POST',				0,				null,					'PLOT_ADJACENT_TO_RIVER_REQUIREMENTS'	),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RIVER_BORDERS_ATTACH',		'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',					0,				null,					'PLOT_ADJACENT_TO_RIVER_REQUIREMENTS'	),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RIVER_BORDERS',				'MODIFIER_SINGLE_CITY_CULTURE_BORDER_EXPANSION',				0,			null,					null	),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_GOLD_DISTANT_TRADE',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_PATH_TILE',	0,				null,					null	),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_CULTURE_DISTANT_TRADE',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_PATH_TILE',	0,				null,					null	),

		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RESOURCE_GOLD_ATTACH',		'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',					0,				null,					null	),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RESOURCE_GOLD',				'MER_VARANGIANS_TO_THE_GREEKS_PLOT',					0,					null,					'REQSET_MER_KYIV_TILE_RIVER_RESOURCE'	),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_LUMBER_CAMPS_PRODUCTION_ATTACH',		'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',		0,				null,					null	),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_LUMBER_CAMPS_PRODUCTION',	'MER_VARANGIANS_TO_THE_GREEKS_PLOT',					0,					null,					'REQSET_MER_KYIV_TILE_RIVER_CAMP_LUMBER'),

		('MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH_ATTACH',				'MER_RUSSKAYA_PRAVDA_STRENGTH_ATTACH',					0,					null,				null),
		('MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH_UNIT_ATTACH',		'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',					0,					null,				'REQSET_IS_MER_YAROSLAV'),
		('MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH',					'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					0,					null,				null),

		('MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_CULTURE_BOMB',				'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER',					0,					null,				null),	
		
		('MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_ECONOMIC_FAVOR',				'MODIFIER_PLAYER_ADJUST_GOVERNMENT_SLOT_TYPE_GRANT_FAVOR',		0,				null,					null);
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,															Name,					Value													)
VALUES	('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RIVER_BORDERS_ATTACH',			'ModifierId',			'MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RIVER_BORDERS'	),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RIVER_BORDERS',					'Amount',				100														),

		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_GOLD_DISTANT_TRADE',			'YieldType',			'YIELD_GOLD'											),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_GOLD_DISTANT_TRADE',			'Amount',				0.4														),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_CULTURE_DISTANT_TRADE',			'YieldType',			'YIELD_CULTURE'											),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_CULTURE_DISTANT_TRADE',			'Amount',				0.2														),

		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RESOURCE_GOLD_ATTACH',				'ModifierId',			'MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RESOURCE_GOLD'	),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RESOURCE_GOLD',						'YieldType',			'YIELD_GOLD'											),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_RESOURCE_GOLD',						'Amount',				1														),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_LUMBER_CAMPS_PRODUCTION_ATTACH',	'ModifierId',			'MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_LUMBER_CAMPS_PRODUCTION'	),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_LUMBER_CAMPS_PRODUCTION',			'YieldType',			'YIELD_PRODUCTION'											),
		('MODIFIER_MER_VARANGIANS_TO_THE_GREEKS_LUMBER_CAMPS_PRODUCTION',			'Amount',				1														),

		('MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH_ATTACH',					'ModifierId',			'MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH_UNIT_ATTACH'		),
		('MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH_UNIT_ATTACH',			'ModifierId',			'MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH'		),
		('MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH',						'Amount',				2														),

		('MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_CULTURE_BOMB',						'DistrictType',			'DISTRICT_MER_KYIV_VECHE'										),

		('MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_ECONOMIC_FAVOR',				'GovernmentSlotType',		'SLOT_ECONOMIC'													),
		('MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_ECONOMIC_FAVOR',					'Amount',					1														);

--------------------------------------------------------------------------------------------------------------------------
-- ModifierStrings
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,													Context,											Text											)
VALUES	('MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH',				'Preview',											'LOC_MODIFIER_LEADER_MER_RUSSKAYA_PRAVDA_STRENGTH_DESC');	

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId					)
VALUES	('REQSET_IS_MER_YAROSLAV',					'REQ_IS_MER_YAROSLAV'		),
		--UA reqsets--
		('REQSET_MER_KYIV_TILE_RIVER_RESOURCE',		'PLOT_HAS_RESOURCE_REQUIREMENTS'		),
		('REQSET_MER_KYIV_TILE_RIVER_RESOURCE',		'KYIV_PLOT_IS_IMPROVED'		),
		('REQSET_MER_KYIV_TILE_RIVER_RESOURCE',		'KYIV_PLOT_IS_RIVER'				),
		
		('REQSET_MER_KYIV_TILE_RIVER_CAMP_LUMBER',	'KYIV_PLOT_IS_RIVER'		),
		('REQSET_MER_KYIV_TILE_RIVER_CAMP_LUMBER',	'KYIV_PLOT_IS_LUMBER_OR_CAMP'		),
		--camp or lumber reqset --
		('REQSET_MER_KYIV_TILE_LUMBER_OR_CAMP',		'REQUIRES_PLOT_HAS_CAMP'			),
		('REQSET_MER_KYIV_TILE_LUMBER_OR_CAMP',		'REQUIRES_PLOT_HAS_LUMBER_MILL'		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType			)
VALUES	('REQSET_IS_MER_YAROSLAV',					'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_MER_KYIV_TILE_RIVER_RESOURCE',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_MER_KYIV_TILE_RIVER_CAMP_LUMBER',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_MER_KYIV_TILE_LUMBER_OR_CAMP',		'REQUIREMENTSET_TEST_ANY'	);
-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType								)
VALUES	('REQ_IS_MER_YAROSLAV',					'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	),
		('KYIV_PLOT_IS_RIVER',					'REQUIREMENT_PLOT_ADJACENT_TO_RIVER'						),
		('KYIV_PLOT_IS_LUMBER_OR_CAMP',			'REQUIREMENT_REQUIREMENTSET_IS_MET'							),
		('KYIV_PLOT_IS_IMPROVED',				'REQUIREMENT_PLOT_HAS_ANY_IMPROVEMENT'							);
-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,								Name,							Value	)
VALUES	('REQ_IS_MER_YAROSLAV',		'LeaderType',							'LEADER_MER_KYIV_YAROSLAV'		),
		('KYIV_PLOT_IS_LUMBER_OR_CAMP',				'RequirementSetId',				'REQSET_MER_KYIV_TILE_LUMBER_OR_CAMP'		);		
		
--==========================================================================================================================
-- AGENDAS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_MER_OLD_LAW',		'KIND_TRAIT');			
-------------------------------------			
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,							Name,									Description)
VALUES	('AGENDA_MER_OLD_LAW',			'LOC_AGENDA_MER_OLD_LAW_NAME',	'LOC_AGENDA_MER_OLD_LAW_DESCRIPTION');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,					Description)
VALUES	('TRAIT_AGENDA_MER_OLD_LAW',		'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');	
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,							TraitType)
VALUES	('AGENDA_MER_OLD_LAW',			'TRAIT_AGENDA_MER_OLD_LAW');	
-------------------------------------		
-- TraitModifiers		
-------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_AGENDA_MER_OLD_LAW',		'AGENDA_MER_OLD_LAW_ALLIANCES'),
		('TRAIT_AGENDA_MER_OLD_LAW',		'AGENDA_MER_OLD_LAW_RETRIBUTION'),
		('TRAIT_AGENDA_MER_OLD_LAW',		'AGENDA_MER_OLD_LAW_LIBERATION'),
		('TRAIT_AGENDA_MER_OLD_LAW',		'AGENDA_MER_OLD_LAW_PROTECTORATE'),
		('TRAIT_AGENDA_MER_OLD_LAW',		'AGENDA_MER_OLD_LAW_LOW_ALLIANCES'),
		('TRAIT_AGENDA_MER_OLD_LAW',		'AGENDA_MER_OLD_LAW_SURPRISE');
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,										ModifierType,								SubjectRequirementSetId)
VALUES	('AGENDA_MER_OLD_LAW_ALLIANCES',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'PLAYER_HAS_MANY_ALLIANCES'),
		('AGENDA_MER_OLD_LAW_RETRIBUTION',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'MER_YAROSLAV_LIKES_RETRIBUTION'),
		('AGENDA_MER_OLD_LAW_LIBERATION',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'MER_YAROSLAV_LIKES_LIBERATION'),
		('AGENDA_MER_OLD_LAW_PROTECTORATE',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'MER_YAROSLAV_LIKES_PROTECTORATE'),
		('AGENDA_MER_OLD_LAW_LOW_ALLIANCES',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'PLAYER_HAS_FEW_ALLIANCES'),
		('AGENDA_MER_OLD_LAW_SURPRISE',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'PLAYER_DECLARES_SURPRISE_WAR');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value,													Extra,				Type)
VALUES	('AGENDA_MER_OLD_LAW_ALLIANCES',		'InitialValue',					10,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_ALLIANCES',		'StatementKey',					'LOC_DIPLO_KUDOS_LEADER_MER_KYIV_YAROSLAV_REASON_ALLIANCES',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_ALLIANCES',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_KYIV_YAROSLAV_OLD_LAW_ALLIANCES',		null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_RETRIBUTION',		'InitialValue',					7,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_RETRIBUTION',		'StatementKey',					'LOC_DIPLO_KUDOS_LEADER_MER_KYIV_YAROSLAV_REASON_RETRIBUTION',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_RETRIBUTION',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_KYIV_YAROSLAV_OLD_LAW_RETRIBUTION',		null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_LIBERATION',		'InitialValue',					7,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_LIBERATION',		'StatementKey',					'LOC_DIPLO_KUDOS_LEADER_MER_KYIV_YAROSLAV_REASON_LIBERATION',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_LIBERATION',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_KYIV_YAROSLAV_OLD_LAW_LIBERATION',		null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_PROTECTORATE',		'InitialValue',					7,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_PROTECTORATE',		'StatementKey',					'LOC_DIPLO_KUDOS_LEADER_MER_KYIV_YAROSLAV_REASON_PROTECTORATE',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_PROTECTORATE',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_KYIV_YAROSLAV_OLD_LAW_PROTECTORATE',		null,				'ARGTYPE_IDENTITY'),

		('AGENDA_MER_OLD_LAW_LOW_ALLIANCES',	'InitialValue',					-7,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_LOW_ALLIANCES',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_MER_KYIV_YAROSLAV_REASON_LOW_ALLIANCES',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_LOW_ALLIANCES',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_KYIV_YAROSLAV_OLD_LAW_LOW_ALLIANCES',		null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_SURPRISE',			'InitialValue',					-10,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_SURPRISE',			'StatementKey',					'LOC_DIPLO_WARNING_LEADER_MER_KYIV_YAROSLAV_REASON_SURPRISE',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_OLD_LAW_SURPRISE',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_MER_KYIV_YAROSLAV_OLD_LAW_SURPRISE',		null,				'ARGTYPE_IDENTITY');

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType				)
VALUES	('MER_YAROSLAV_LIKES_RETRIBUTION',			'REQUIREMENTSET_TEST_ALL'		),
		('MER_YAROSLAV_LIKES_LIBERATION',			'REQUIREMENTSET_TEST_ALL'		),
		('MER_YAROSLAV_LIKES_PROTECTORATE',			'REQUIREMENTSET_TEST_ALL'		);

--------------------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('MER_YAROSLAV_LIKES_RETRIBUTION',			'REQUIRES_PLAYERS_HAVE_MET'),
		('MER_YAROSLAV_LIKES_RETRIBUTION',			'REQUIRES_MET_10_TURNS_AGO'),
		('MER_YAROSLAV_LIKES_RETRIBUTION',			'MER_YAROSLAV_RETRIBUTION'),

		('MER_YAROSLAV_LIKES_LIBERATION',			'REQUIRES_PLAYERS_HAVE_MET'),
		('MER_YAROSLAV_LIKES_LIBERATION',			'REQUIRES_MET_10_TURNS_AGO'),
		('MER_YAROSLAV_LIKES_LIBERATION',			'MER_YAROSLAV_LIBERATION'),

		('MER_YAROSLAV_LIKES_PROTECTORATE',			'REQUIRES_PLAYERS_HAVE_MET'),
		('MER_YAROSLAV_LIKES_PROTECTORATE',			'REQUIRES_MET_10_TURNS_AGO'),
		('MER_YAROSLAV_LIKES_PROTECTORATE',			'MER_YAROSLAV_PROTECTORATE');

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType								)
VALUES	('MER_YAROSLAV_RETRIBUTION',			'REQUIREMENT_PLAYER_DECLARED_WAR'	),
		('MER_YAROSLAV_PROTECTORATE',			'REQUIREMENT_PLAYER_DECLARED_WAR'	),
		('MER_YAROSLAV_LIBERATION',				'REQUIREMENT_PLAYER_DECLARED_WAR'	);
-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,						Name,						Value	)
VALUES	('MER_YAROSLAV_RETRIBUTION',		'WarType',			'WAR_OF_RETRIBUTION'),
		('MER_YAROSLAV_PROTECTORATE',		'WarType',			'PROTECTORATE_WAR'),
		('MER_YAROSLAV_LIBERATION',			'WarType',			'LIBERATION_WAR');	

-------------------------------------
-- Preferred and Excluded Agendas
-------------------------------------		
		
INSERT INTO AgendaPreferredLeaders				
		(AgendaType,						LeaderType,						PercentageChance)
VALUES	('AGENDA_TURTLER',					'LEADER_MER_KYIV_YAROSLAV',		15),
		('AGENDA_STANDING_ARMY',			'LEADER_MER_KYIV_YAROSLAV',		15),
		('AGENDA_ZEALOT',					'LEADER_MER_KYIV_YAROSLAV',		15),
		('AGENDA_PILLAGER',					'LEADER_MER_KYIV_YAROSLAV',		15),
		('AGENDA_PARANOID',					'LEADER_MER_KYIV_YAROSLAV',		15),
		('AGENDA_ENVIRONMENTALIST',			'LEADER_MER_KYIV_YAROSLAV',		15),
		('AGENDA_INTOLERANT',				'LEADER_MER_KYIV_YAROSLAV',		15),
		('AGENDA_DEMAGOGUE',				'LEADER_MER_KYIV_YAROSLAV',		15),
		('AGENDA_CITY_STATE_PROTECTOR',		'LEADER_MER_KYIV_YAROSLAV',		15),
		('AGENDA_CITY_STATE_ALLY',			'LEADER_MER_KYIV_YAROSLAV',		15);

INSERT INTO ExclusiveAgendas
		(AgendaOne,										AgendaTwo)
VALUES	('AGENDA_MER_OLD_LAW',		'AGENDA_DARWINIST'),
		('AGENDA_MER_OLD_LAW',		'AGENDA_EXPLOITATIVE');
-------------------------------------
-- AiListTypes
-------------------------------------
INSERT INTO AiListTypes	
		(ListType)
VALUES	('MER_KYIV_YAROSLAV_Victories'),
		('MER_KYIV_YAROSLAV_Settle'),
		('MER_KYIV_YAROSLAV_Diplo'),
		('MER_KYIV_YAROSLAV_PseudoYields'),
		('MER_KYIV_YAROSLAV_Yields'),
		('MER_KYIV_YAROSLAV_Builds'),
		('MER_KYIV_YAROSLAV_Operations'),
		('MER_KYIV_YAROSLAV_Exploration'),
		('MER_KYIV_YAROSLAV_Alliances'),
		('MER_KYIV_YAROSLAV_Discussions'),
		('MER_KYIV_YAROSLAV_Resolutions'),
		('MER_KYIV_YAROSLAV_UnitPromoClasses');

-------------------------------------
-- AiLists
-------------------------------------
	
INSERT INTO AiLists	
		(ListType,								LeaderType,								System)
VALUES	('MER_KYIV_YAROSLAV_Victories',			'TRAIT_AGENDA_MER_KYIV_YAROSLAV',		'Strategies'),
		('MER_KYIV_YAROSLAV_Settle',			'TRAIT_AGENDA_MER_KYIV_YAROSLAV',		'PlotEvaluations'),
		('MER_KYIV_YAROSLAV_Diplo',				'TRAIT_AGENDA_MER_KYIV_YAROSLAV',		'DiplomaticActions'),
		('MER_KYIV_YAROSLAV_PseudoYields',		'TRAIT_AGENDA_MER_KYIV_YAROSLAV',		'PseudoYields'),
		('MER_KYIV_YAROSLAV_Yields',			'TRAIT_AGENDA_MER_KYIV_YAROSLAV',		'Yields'),
		('MER_KYIV_YAROSLAV_Builds',			'TRAIT_AGENDA_MER_KYIV_YAROSLAV',		'AiBuildSpecializations'),
		('MER_KYIV_YAROSLAV_Operations',		'TRAIT_AGENDA_MER_KYIV_YAROSLAV',		'AiOperationTypes'),
		('MER_KYIV_YAROSLAV_Exploration',		'TRAIT_AGENDA_MER_KYIV_YAROSLAV',		'AiScoutUses'),
		('MER_KYIV_YAROSLAV_Alliances',			'TRAIT_AGENDA_MER_KYIV_YAROSLAV',		'Alliances'),
		('MER_KYIV_YAROSLAV_Discussions',		'TRAIT_AGENDA_MER_KYIV_YAROSLAV',		'Discussions'),
		('MER_KYIV_YAROSLAV_Resolutions',		'TRAIT_AGENDA_MER_KYIV_YAROSLAV',		'Resolutions'),
		('MER_KYIV_YAROSLAV_UnitPromoClasses',	'TRAIT_AGENDA_MER_KYIV_YAROSLAV',		'UnitPromotionClasses');
		
-------------------------------------
-- AiFavoredItems
-- So from what I can see: 
---- Favored 1, Value -200 means the leader completely hates the thing
---- Favored 1, Value -100 means the leader hates the thing
---- Favored 0, Value 0 means the leader doesn't like the thing
---- Favored 1, Value 0 means the leader likes the thing
---- Favored 1, Value 20 means the leader really likes the thing
---- Favored 1, Value 50 means the leader loves the thing
--
---- On Victory Strategies it's all backwards:
------- Favored 1, Value -2 Means the Victory is Preferred
------- Favored 1, Value 5 Means the Victory is Forbidden
-------------------------------------
	
INSERT INTO AiFavoredItems		
		(ListType,							Item,									StringVal,					Favored,	Value)
		-- Preferred Victories and Strategies (From the Strategies table)
		---- VICTORY_STRATEGY_CULTURAL_VICTORY
		---- VICTORY_STRATEGY_MILITARY_VICTORY
		---- VICTORY_STRATEGY_RELIGIOUS_VICTORY
		---- VICTORY_STRATEGY_SCIENCE_VICTORY
		---- VICTORY_STRATEGY_DIPLOMATIC_VICTORY
		---- STRATEGY_EARLY_EXPLORATION
		---- STRATEGY_RAPID_EXPANSION
		---- STRATEGY_NAVAL
		---- STRATEGY_WONDER_OBSESSED
VALUES	('MER_KYIV_YAROSLAV_Victories',			'VICTORY_STRATEGY_DIPLOMATIC_VICTORY',		null,						1,			-2),
		('MER_KYIV_YAROSLAV_Victories',			'VICTORY_STRATEGY_MILITARY_VICTORY',		null,						1,			-2),
		('MER_KYIV_YAROSLAV_Victories',			'VICTORY_STRATEGY_RELIGIOUS_VICTORY',		null,						1,			-2),
		('MER_KYIV_YAROSLAV_Victories',			'VICTORY_STRATEGY_CULTURAL_VICTORY',		null,						1,			-2),
		('MER_KYIV_YAROSLAV_Victories',			'VICTORY_STRATEGY_SCIENCE_VICTORY',		null,							1,			-1),
		-- Preferred Settling (From the PlotEvaluations table)
		---- Coastal
		---- Cultural Pressure
		---- Foreign Continent
		---- Fresh Water
		---- Nearest Friendly City
		---- Nearest Enemy City
		---- New Resources
		---- Inner Ring Yield (StringVal:YIELD_TYPE)
		---- Total Yield      (StringVal:YIELD_TYPE)
		---- Resource Class   (StringVal:RESOURCECLASS_TYPE)
		---- SpecificResource (StringVal:RESOURCE_TYPE)
		---- Specific Feature (StringVal:FEATURE_TYPE)
		('MER_KYIV_YAROSLAV_Settle',		'Coastal',						null,						1,			0),
		('MER_KYIV_YAROSLAV_Settle',		'Nearest Enemy City',						null,						1,			0),
		('MER_KYIV_YAROSLAV_Settle',		'Foreign Continent',						null,						1,			0),
		-- Preferred Build Specializations (better leave these ones out unless you want a very specific behaviour)
		---- BUILD_FOR_CULTURE
		---- BUILD_FOR_FAITH
		---- BUILD_FOR_FOOD
		---- BUILD_FOR_GOLD
		---- BUILD_FOR_PRODUCTION
		---- BUILD_FOR_SCIENCE
		---- BUILD_MILITARY_UNITS
		---- BUILD_TRADE_UNITS
		---- BUILD_CITY_DEFENSES
		('MER_KYIV_YAROSLAV_Builds',		'BUILD_MILITARY_UNITS',						null,						1,			20),
		('MER_KYIV_YAROSLAV_Builds',		'BUILD_CITY_DEFENSES',						null,						1,			20),
		('MER_KYIV_YAROSLAV_Builds',		'BUILD_FOR_PRODUCTION',						null,						1,			0),
		('MER_KYIV_YAROSLAV_Builds',		'BUILD_FOR_FOOD',							null,						1,			0),		
		('MER_KYIV_YAROSLAV_Builds',		'BUILD_FOR_CULTURE',						null,						1,			20),		
		-- Preferred Ai Operations (better leave these ones out unless you want a very specific behaviour)
		---- ATTACK_BARBARIANS
		---- CITY_ASSAULT
		---- NAVAL_SUPERIORITY
		---- OP_DEFENSE
		---- OP_NUCLEAR
		---- OP_SETTLE
		---- OP_ESCORT
		('MER_KYIV_YAROSLAV_Operations',		'OP_SETTLE',					null,						1,			0),
		('MER_KYIV_YAROSLAV_Operations',		'OP_ESCORT',					null,						1,			0),
		('MER_KYIV_YAROSLAV_Operations',		'ATTACK_BARBARIANS',			null,						1,			20),		
		-- Preferred Ai Exploration (better leave these ones out unless you want a very specific behaviour)
		---- DEFAULT_LAND_SCOUTS
		---- DEFAULT_NAVAL_SCOUTS
		---- LAND_SCOUTS_PER_PRIMARY_REGION
		---- LAND_SCOUTS_PER_SECONDARY_REGION
		---- NAVAL_SCOUTS_FOR_WORLD_EXPLORATION
		('MER_KYIV_YAROSLAV_Exploration',		'LAND_SCOUTS_PER_PRIMARY_REGION',	null,						1,			0),
			
		-- Preferred Diplomatic Actions (From the DiplomaticActions table)
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_OPEN_BORDERS',									null,						1,			0),
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_JOINT_WAR',									null,						1,			50),
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_RESIDENT_EMBASSY',								null,						1,			20),
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_DECLARE_FRIENDSHIP',								null,						1,			20),
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_ALLIANCE_RESEARCH',								null,						1,			50),
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_ALLIANCE_ECONOMIC',								null,						1,			50),
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_ALLIANCE_MILITARY',								null,						1,			50),
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_ALLIANCE_CULTURAL',								null,						1,			50),
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_ALLIANCE_RELIGIOUS',								null,						1,			50),
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_DECLARE_SURPRISE_WAR',							null,						1,			-200),
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_DECLARE_LIBERATION_WAR',							null,						1,			50),		
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_DECLARE_WAR_OF_RETRIBUTION',							null,						1,			50),			
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_DECLARE_PROTECTORATE_WAR',							null,						1,			50),			
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_KEEP_PROMISE_DONT_DIG_ARTIFACTS',						null,						1,			50),		
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR',						null,						1,			50),	
		('MER_KYIV_YAROSLAV_Diplo',			'DIPLOACTION_KEEP_PROMISE_DONT_SPY',						null,						1,			50),	
		-- Preferred Pseudoyields (From the PseudoYields table)
		('MER_KYIV_YAROSLAV_PseudoYields',		'PSEUDOYIELD_CITY_POPULATION',					null,						1,			0),
		('MER_KYIV_YAROSLAV_PseudoYields',		'PSEUDOYIELD_CITY_DEFENSES',					null,						1,			20),
		('MER_KYIV_YAROSLAV_PseudoYields',		'PSEUDOYIELD_GOVERNOR',							null,						1,			0),
		('MER_KYIV_YAROSLAV_PseudoYields',		'PSEUDOYIELD_UNIT_SETTLER',						null,						1,			20),
		('MER_KYIV_YAROSLAV_PseudoYields',		'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',				null,						1,			50),

		-- Preferred Yields (From the Yields table)
		('MER_KYIV_YAROSLAV_Yields',				'YIELD_CULTURE',								null,						1,			20),

		-- Preferred Alliances (From the Alliances table)
		-- ('MER_KYIV_YAROSLAV_Alliances',			'ALLIANCE_MILITARY',							null,						1,			20),

		-- Preferred Unit Promotion Classes (From the UnitPromotionClasses table)
		('MER_KYIV_YAROSLAV_UnitPromoClasses',	'PROMOTION_CLASS_MELEE',							null,						1,			50),
		
		-- Preferred Discussions (Emergencies and Competitions... In this case I prefer putting a preference/dislike to all)
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_MILITARY',				null,						1,			0),
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_CITY_STATE',				null,						1,			0),
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_RELIGIOUS',				null,						1,			0),
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_NUCLEAR',					null,						1,			0),
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_BACKSTAB',				null,						1,			0),
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_REQUEST_AID',				null,						1,			0),
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_LITERATURE',	null,						1,			0),
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_PEACE',		null,						1,			0),
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',		null,						1,			0),
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_CLIMATE_ACCORDS',			null,						1,			0),
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_WORLD_GAMES',				null,						1,			0),
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_SPACE_STATION',			null,						1,			0),
		('MER_KYIV_YAROSLAV_Discussions',		'WC_EMERGENCY_WORLD_FAIR',				null,						1,			0),

		-- Preferred Resolutions (In this case I also prefer putting a preference/dislike to all)
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_ARMS_CONTROL',					null,						1,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_BORDER_CONTROL',				null,						1,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_DEFORESTATION_TREATY',			null,						0,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_DIPLOVICTORY',					null,						1,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_ESPIONAGE_PACT',				null,						1,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_GLOBAL_ENERGY_TREATY',			null,						0,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_HERITAGE_ORG',					null,						0,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_LUXURY',						null,						0,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_MERCENARY_COMPANIES',			null,						1,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_MIGRATION_TREATY',				null,						0,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_MILITARY_ADVISORY',				null,						1,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_PATRONAGE',						null,						1,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_PUBLIC_RELATIONS',				null,						1,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_PUBLIC_WORKS',					null,						1,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_SOVEREIGNTY',					null,						1,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_TRADE_TREATY',					null,						1,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_URBAN_DEVELOPMENT',				null,						0,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_WORLD_IDEOLOGY',				null,						1,			0),
		('MER_KYIV_YAROSLAV_Resolutions',		'WC_RES_WORLD_RELIGION',				null,						1,			0);
		
--==========================================================================================================================
--==========================================================================================================================

--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- CivilizationLeaders
-------------------------------------	
INSERT INTO CivilizationLeaders 
        (CivilizationType,			LeaderType,		CapitalName)
VALUES  ('CIVILIZATION_MER_KYIVAN_RUS',	'LEADER_MER_KYIV_YAROSLAV',	'LOC_CITY_NAME_MER_KYIV');
--==========================================================================================================================
--==========================================================================================================================
