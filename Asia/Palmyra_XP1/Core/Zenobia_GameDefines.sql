--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('LEADER_MER_ZENOBIA',		'KIND_LEADER');


----------------------------------------------------------------------------------------------------------------------------
-- Leaders
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,				Name,								InheritFrom,		SceneLayers)
VALUES	('LEADER_MER_ZENOBIA',		'LOC_LEADER_MER_ZENOBIA_NAME',	'LEADER_DEFAULT',	4);
----------------------------------------------------------------------------------------------------------------------------
-- LeaderQuotes
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,				Quote)
VALUES	('LEADER_MER_ZENOBIA',		'LOC_PEDIA_LEADERS_PAGE_LEADER_MER_ZENOBIA_QUOTE');
----------------------------------------------------------------------------------------------------------------------------
-- HistoricalAgendas
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,				AgendaType)
VALUES	('LEADER_MER_ZENOBIA',		'AGENDA_MER_PAIDEIA');
----------------------------------------------------------------------------------------------------------------------------
-- LeaderTraits
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,				TraitType)
VALUES	('LEADER_MER_ZENOBIA',	'TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS');
----------------------------------------------------------------------------------------------------------------------------
-- FavoredReligions
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO FavoredReligions	
		(LeaderType,				ReligionType)
VALUES	('LEADER_MER_ZENOBIA',	'RELIGION_ORTHODOXY');
--==========================================================================================================================
-- LEADERS: AI
--==========================================================================================================================
-- AiListTypes
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('ZENOBIA_Buildings'),
		('ZENOBIA_Civics');
--------------------------------------------------------------------------------------------------------------------------
-- AiLists
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AiLists	
		(ListType,						LeaderType,									System)
VALUES	('ZENOBIA_Buildings',		'LEADER_MER_ZENOBIA',		'Buildings'),
		('ZENOBIA_Civics',		'LEADER_MER_ZENOBIA',		'Civics');		
--------------------------------------------------------------------------------------------------------------------------		
-- AiFavoredItems
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AiFavoredItems	
		(ListType,						Favored,	Value,							Item)
VALUES	('ZENOBIA_Buildings',		1,			1,								'BUILDING_BARRACKS'), 
		('ZENOBIA_Civics',		1,			1,								'CIVIC_MILITARY_TRAINING'), 
		('ZENOBIA_Civics',		1,			1,								'CIVIC_CIVIL_SERVICE');
--==========================================================================================================================
-- LEADERS: AGENDAS
--==========================================================================================================================
-- Types
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,													Kind)
VALUES	('TRAIT_AGENDA_MER_PAIDEIA',					'KIND_TRAIT');			
----------------------------------------------------------------------------------------------------------------------------					
-- Agendas			
----------------------------------------------------------------------------------------------------------------------------						
INSERT INTO Agendas					
		(AgendaType,											Name,												Description)
VALUES	('AGENDA_MER_PAIDEIA',							'LOC_AGENDA_MER_PAIDEIA_NAME',				'LOC_AGENDA_MER_PAIDEIA_DESCRIPTION');	
----------------------------------------------------------------------------------------------------------------------------					
-- Traits			
----------------------------------------------------------------------------------------------------------------------------						
INSERT INTO Traits				
		(TraitType,												Name,												Description)
VALUES	('TRAIT_AGENDA_MER_PAIDEIA',					'LOC_PLACEHOLDER',									'LOC_PLACEHOLDER');	
----------------------------------------------------------------------------------------------------------------------------					
-- AgendaTraits			
----------------------------------------------------------------------------------------------------------------------------						
INSERT INTO AgendaTraits				
		(AgendaType,											TraitType)
VALUES	('AGENDA_MER_PAIDEIA',							'TRAIT_AGENDA_MER_PAIDEIA');	
----------------------------------------------------------------------------------------------------------------------------		
-- TraitModifiers		
----------------------------------------------------------------------------------------------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,												ModifierId)
VALUES	('TRAIT_AGENDA_MER_PAIDEIA',					'MER_PAIDEIA_MODIFIER_GREAT_PEOPLE'),
		('TRAIT_AGENDA_MER_PAIDEIA',					'MER_PAIDEIA_MODIFIER_NEIGHBOURS'),
		('TRAIT_AGENDA_MER_PAIDEIA',					'MER_PAIDEIA_MODIFIER_DECAY');
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,											ModifierType,										SubjectRequirementSetId)
VALUES	('MER_PAIDEIA_MODIFIER_GREAT_PEOPLE',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'PLAYER_LEADS_GREAT_PEOPLE'),
		('MER_PAIDEIA_MODIFIER_NEIGHBOURS',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'PLAYERS_ARE_NEIGHBORS'),
		('MER_PAIDEIA_MODIFIER_DECAY',		'MODIFIER_PLAYER_ADJUST_GRIEVANCE_DECAY',		null);
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value,															Extra,				Type)
VALUES	('MER_PAIDEIA_MODIFIER_GREAT_PEOPLE',						'InitialValue',					10,																null,				'ARGTYPE_IDENTITY'),
		('MER_PAIDEIA_MODIFIER_GREAT_PEOPLE',						'StatementKey',					'LOC_DIPLO_KUDOS_LEADER_MER_ZENOBIA_REASON_GREAT_PEOPLE',		null,				'ARGTYPE_IDENTITY'),
		('MER_PAIDEIA_MODIFIER_GREAT_PEOPLE',						'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_AGENDA_MER_PAIDEIA_GREAT_PEOPLE',			null,				'ARGTYPE_IDENTITY'),
		('MER_PAIDEIA_MODIFIER_NEIGHBOURS',							'InitialValue',					-15,															null,				'ARGTYPE_IDENTITY'),
		('MER_PAIDEIA_MODIFIER_NEIGHBOURS',							'StatementKey',					'LOC_DIPLO_WARNING_LEADER_MER_ZENOBIA_REASON_NEIGHBOURS',		null,				'ARGTYPE_IDENTITY'),
		('MER_PAIDEIA_MODIFIER_NEIGHBOURS',							'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_AGENDA_MER_PAIDEIA_NEIGHBOURS',				null,				'ARGTYPE_IDENTITY'),

		('MER_PAIDEIA_MODIFIER_DECAY',								'Amount',						100,															null,				'ARGTYPE_IDENTITY');

--------------------------------------------------------------------------------------------------------------------------		
-- ModifierStrings		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO ModifierStrings			
		(ModifierId,											Context,											Text)
VALUES	('MER_PAIDEIA_MODIFIER_GREAT_PEOPLE',			'Sample',											'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('MER_PAIDEIA_MODIFIER_NEIGHBOURS',			'Sample',											'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
-------------------------------------
-- Preferred and Excluded Agendas
-------------------------------------		
		
INSERT INTO AgendaPreferredLeaders				
		(AgendaType,						LeaderType,						PercentageChance)
VALUES	('AGENDA_IDEOLOGUE',				'LEADER_MER_ZENOBIA',			15),
		('AGENDA_EXPANSIONIST',				'LEADER_MER_ZENOBIA',			15),
		('AGENDA_STANDING_ARMY',			'LEADER_MER_ZENOBIA',			15);

INSERT INTO ExclusiveAgendas
		(AgendaOne,								AgendaTwo)
VALUES	('AGENDA_MER_PAIDEIA',		'AGENDA_GREAT_PERSON_ADVOCATE'),
		('AGENDA_MER_PAIDEIA',		'AGENDA_TURTLER'),
		('AGENDA_MER_PAIDEIA',		'AGENDA_SYCOPHANT');
-------------------------------------
-- AiListTypes
-------------------------------------
INSERT INTO AiListTypes	
		(ListType)
VALUES	('MER_ZENOBIA_Victories'),
		('MER_ZENOBIA_Settle'),
		('MER_ZENOBIA_Diplo'),
		('MER_ZENOBIA_PseudoYields'),
		('MER_ZENOBIA_Yields'),
		('MER_ZENOBIA_Builds'),
		('MER_ZENOBIA_Operations'),
		('MER_ZENOBIA_Exploration'),
		('MER_ZENOBIA_Alliances'),
		('MER_ZENOBIA_Discussions'),
		('MER_ZENOBIA_Resolutions'),
		('MER_ZENOBIA_UnitPromoClasses');

-------------------------------------
-- AiLists
-------------------------------------
	
INSERT INTO AiLists	
		(ListType,								LeaderType,								System)
VALUES	('MER_ZENOBIA_Victories',			'TRAIT_AGENDA_MER_ZENOBIA',		'Strategies'),
		('MER_ZENOBIA_Settle',			'TRAIT_AGENDA_MER_ZENOBIA',		'PlotEvaluations'),
		('MER_ZENOBIA_Diplo',				'TRAIT_AGENDA_MER_ZENOBIA',		'DiplomaticActions'),
		('MER_ZENOBIA_PseudoYields',		'TRAIT_AGENDA_MER_ZENOBIA',		'PseudoYields'),
		('MER_ZENOBIA_Yields',			'TRAIT_AGENDA_MER_ZENOBIA',		'Yields'),
		('MER_ZENOBIA_Builds',			'TRAIT_AGENDA_MER_ZENOBIA',		'AiBuildSpecializations'),
		('MER_ZENOBIA_Operations',		'TRAIT_AGENDA_MER_ZENOBIA',		'AiOperationTypes'),
		('MER_ZENOBIA_Exploration',		'TRAIT_AGENDA_MER_ZENOBIA',		'AiScoutUses'),
		('MER_ZENOBIA_Alliances',			'TRAIT_AGENDA_MER_ZENOBIA',		'Alliances'),
		('MER_ZENOBIA_Discussions',		'TRAIT_AGENDA_MER_ZENOBIA',		'Discussions'),
		('MER_ZENOBIA_Resolutions',		'TRAIT_AGENDA_MER_ZENOBIA',		'Resolutions'),
		('MER_ZENOBIA_UnitPromoClasses',	'TRAIT_AGENDA_MER_ZENOBIA',		'UnitPromotionClasses');
		
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
VALUES	('MER_ZENOBIA_Victories',			'VICTORY_STRATEGY_DIPLOMATIC_VICTORY',		null,						1,			0),
		('MER_ZENOBIA_Victories',			'VICTORY_STRATEGY_MILITARY_VICTORY',		null,						1,			-2),
		('MER_ZENOBIA_Victories',			'VICTORY_STRATEGY_RELIGIOUS_VICTORY',		null,						1,			0),
		('MER_ZENOBIA_Victories',			'VICTORY_STRATEGY_CULTURAL_VICTORY',		null,						1,			0),
		('MER_ZENOBIA_Victories',			'VICTORY_STRATEGY_SCIENCE_VICTORY',		null,							1,			0),
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
		('MER_ZENOBIA_Settle',		'Specific Feature',									'FEATURE_OASIS',						1,			50),
		('MER_ZENOBIA_Settle',		'Nearest Enemy City',									null,						1,			20),
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
		('MER_ZENOBIA_Builds',		'BUILD_FOR_FOOD',						null,						1,			20),
		('MER_ZENOBIA_Builds',		'BUILD_FOR_CULTURE',							null,						1,			20),
		('MER_ZENOBIA_Builds',		'BUILD_FOR_FAITH',							null,						1,			20),
		('MER_ZENOBIA_Builds',		'BUILD_MILITARY_UNITS',						null,						1,			20),	
		-- Preferred Ai Operations (better leave these ones out unless you want a very specific behaviour)
		---- ATTACK_BARBARIANS
		---- CITY_ASSAULT
		---- NAVAL_SUPERIORITY
		---- OP_DEFENSE
		---- OP_NUCLEAR
		---- OP_SETTLE
		---- OP_ESCORT
		('MER_ZENOBIA_Operations',		'OP_SETTLE',					null,						1,			0),
		('MER_ZENOBIA_Operations',		'OP_ESCORT',					null,						1,			0),	
		('MER_ZENOBIA_Operations',		'CITY_ASSAULT',					null,						1,			10),		
		-- Preferred Ai Exploration (better leave these ones out unless you want a very specific behaviour)
		---- DEFAULT_LAND_SCOUTS
		---- DEFAULT_NAVAL_SCOUTS
		---- LAND_SCOUTS_PER_PRIMARY_REGION
		---- LAND_SCOUTS_PER_SECONDARY_REGION
		---- NAVAL_SCOUTS_FOR_WORLD_EXPLORATION
		('MER_ZENOBIA_Exploration',		'DEFAULT_LAND_SCOUTS',		null,						1,			0),
					
		-- Preferred Diplomatic Actions (From the DiplomaticActions table)
		('MER_ZENOBIA_Diplo',			'DIPLOACTION_OPEN_BORDERS',									null,						0,			0),
		('MER_ZENOBIA_Diplo',			'DIPLOACTION_DEMAND_TRIBUTE',									null,						1,			0),
		('MER_ZENOBIA_Diplo',			'DIPLOACTION_RESIDENT_EMBASSY',								null,						1,			0),
		('MER_ZENOBIA_Diplo',			'DIPLOACTION_MAKE_PEACE',								null,						0,			0),	
		('MER_ZENOBIA_Diplo',			'DIPLOACTION_DECLARE_TERRITORIAL_WAR',							null,						1,			50),				
		-- Preferred Pseudoyields (From the PseudoYields table)
		('MER_ZENOBIA_PseudoYields',		'PSEUDOYIELD_GREATWORK_WRITING',							null,						1,			10),
		('MER_ZENOBIA_PseudoYields',		'PSEUDOYIELD_GPP_MERCHANT',							null,						1,			10),
		('MER_ZENOBIA_PseudoYields',		'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL',							null,						1,			10),
		('MER_ZENOBIA_PseudoYields',		'PSEUDOYIELD_GPP_WRITER',							null,						1,			10),
		('MER_ZENOBIA_PseudoYields',		'PSEUDOYIELD_GPP_GENERAL',							null,						1,			10),
		-- Preferred Yields (From the Yields table)
		('MER_ZENOBIA_Yields',				'YIELD_GOLD',								null,						1,			50),

		-- Preferred Alliances (From the Alliances table)
		-- ('MER_ZENOBIA_Alliances',			'ALLIANCE_MILITARY',							null,						1,			20),

		-- Preferred Unit Promotion Classes (From the UnitPromotionClasses table)
		('MER_ZENOBIA_UnitPromoClasses',	'PROMOTION_CLASS_SIEGE',							null,						1,			10),
		('MER_ZENOBIA_UnitPromoClasses',	'PROMOTION_CLASS_HEAVY_CAVALRY',					null,						1,			20),
		-- Preferred Discussions (Emergencies and Competitions... In this case I prefer putting a preference/dislike to all)
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_MILITARY',				null,						0,			0),
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_CITY_STATE',				null,						0,			0),
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_RELIGIOUS',				null,						1,			0),
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_NUCLEAR',					null,						0,			0),
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_BACKSTAB',				null,						1,			0),
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_REQUEST_AID',				null,						1,			0),
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_LITERATURE',	null,						1,			0),
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_PEACE',		null,						1,			0),
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',		null,						1,			0),
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_CLIMATE_ACCORDS',			null,						1,			0),
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_WORLD_GAMES',				null,						1,			0),
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_SPACE_STATION',			null,						1,			0),
		('MER_ZENOBIA_Discussions',		'WC_EMERGENCY_WORLD_FAIR',				null,						1,			0),

		-- Preferred Resolutions (In this case I also prefer putting a preference/dislike to all)
		('MER_ZENOBIA_Resolutions',		'WC_RES_ARMS_CONTROL',					null,						0,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_BORDER_CONTROL',				null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_DEFORESTATION_TREATY',			null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_DIPLOVICTORY',					null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_ESPIONAGE_PACT',				null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_GLOBAL_ENERGY_TREATY',			null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_HERITAGE_ORG',					null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_LUXURY',						null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_MERCENARY_COMPANIES',			null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_MIGRATION_TREATY',				null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_MILITARY_ADVISORY',				null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_PATRONAGE',						null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_PUBLIC_RELATIONS',				null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_PUBLIC_WORKS',					null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_SOVEREIGNTY',					null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_TRADE_TREATY',					null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_URBAN_DEVELOPMENT',				null,						1,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_WORLD_IDEOLOGY',				null,						0,			0),
		('MER_ZENOBIA_Resolutions',		'WC_RES_WORLD_RELIGION',				null,						0,			0);

--==========================================================================================================================
-- LEADERS: LOADING INFO
--==========================================================================================================================
-- LoadingInfo
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,					BackgroundImage, 					ForegroundImage,					PlayDawnOfManAudio)
VALUES	('LEADER_MER_ZENOBIA',		'LEADER_HOJO_BACKGROUND',	'LEADER_MER_ZENOBIA_NEUTRAL',		0);	
--==========================================================================================================================
-- LEADERS: TRAITS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,												Kind)
VALUES	('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',			'KIND_TRAIT'),	
		('MODTYPE_MER_PALMYRA_HEAVY_CAVALRY_PRODUCTION',	'KIND_MODIFIER');	
--------------------------------------------------------------------------------------------------------------------------			
-- Traits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,										Name,													Description)
VALUES	('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',			'LOC_TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS_NAME',			'LOC_TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS_DESCRIPTION');		
-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,								ModifierId				)
VALUES	('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_THEATRE_POINTS_FOUNDED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_THEATRE_POINTS_FOUNDED_CITY_ATTACH2'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_THEATRE_POINTS_FOUNDED_CITY_ATTACH3'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_CAMPUS_POINTS_FOUNDED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_ENCAMPMENT_POINTS_FOUNDED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_COMMERCIAL_POINTS_FOUNDED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_HOLY_POINTS_FOUNDED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_INDUSTRIAL_POINTS_FOUNDED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_THEATRE_POINTS_CAPTURED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_THEATRE_POINTS_CAPTURED_CITY_ATTACH2'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_THEATRE_POINTS_CAPTURED_CITY_ATTACH3'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_CAMPUS_POINTS_CAPTURED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_ENCAMPMENT_POINTS_CAPTURED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_COMMERCIAL_POINTS_CAPTURED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_HOLY_POINTS_CAPTURED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_INDUSTRIAL_POINTS_CAPTURED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_LOYALTY_CAPTURED_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_HEAVY_CAVALRY_PRODUCTION_CITY_ATTACH'	),
		('TRAIT_LEADER_MER_IMPERIAL_ASPIRATIONS',	'MER_HEAVY_CAVALRY_PRODUCTION_CONQUERED_CITY_ATTACH'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,					EffectType									)
VALUES	('MODTYPE_MER_PALMYRA_HEAVY_CAVALRY_PRODUCTION',	'COLLECTION_OWNER',		'EFFECT_ADJUST_CITY_ALL_MILITARY_UNITS_PRODUCTION'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,											SubjectRequirementSetId				)
VALUES	('MER_THEATRE_POINTS_FOUNDED_CITY_ATTACH',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_THEATRE_POINTS_FOUNDED_CITY',						'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_THEATER'),
		('MER_THEATRE_POINTS_FOUNDED_CITY_ATTACH2',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_THEATRE_POINTS_FOUNDED_CITY2',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_THEATER'),
		('MER_THEATRE_POINTS_FOUNDED_CITY_ATTACH3',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_THEATRE_POINTS_FOUNDED_CITY3',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_THEATER'),
		('MER_CAMPUS_POINTS_FOUNDED_CITY_ATTACH',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_CAMPUS_POINTS_FOUNDED_CITY',						'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_CAMPUS'),
		('MER_ENCAMPMENT_POINTS_FOUNDED_CITY_ATTACH',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_ENCAMPMENT_POINTS_FOUNDED_CITY',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_ENCAMPMENT'),
		('MER_COMMERCIAL_POINTS_FOUNDED_CITY_ATTACH',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_COMMERCIAL_POINTS_FOUNDED_CITY',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_COMMERCIAL_HUB'),
		('MER_HOLY_POINTS_FOUNDED_CITY_ATTACH',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_HOLY_POINTS_FOUNDED_CITY',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_HOLY_SITE'),
		('MER_INDUSTRIAL_POINTS_FOUNDED_CITY_ATTACH',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_INDUSTRIAL_POINTS_FOUNDED_CITY',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_INDUSTRIAL_ZONE'),

		('MER_THEATRE_POINTS_CAPTURED_CITY_ATTACH',				'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_THEATRE_POINTS_CAPTURED_CITY',						'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_THEATER'),
		('MER_THEATRE_POINTS_CAPTURED_CITY_ATTACH2',				'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_THEATRE_POINTS_CAPTURED_CITY2',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_THEATER'),
		('MER_THEATRE_POINTS_CAPTURED_CITY_ATTACH3',				'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_THEATRE_POINTS_CAPTURED_CITY3',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_THEATER'),
		('MER_CAMPUS_POINTS_CAPTURED_CITY_ATTACH',				'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_CAMPUS_POINTS_CAPTURED_CITY',						'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_CAMPUS'),
		('MER_ENCAMPMENT_POINTS_CAPTURED_CITY_ATTACH',			'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_ENCAMPMENT_POINTS_CAPTURED_CITY',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_ENCAMPMENT'),
		('MER_COMMERCIAL_POINTS_CAPTURED_CITY_ATTACH',			'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_COMMERCIAL_POINTS_CAPTURED_CITY',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_COMMERCIAL_HUB'),
		('MER_HOLY_POINTS_CAPTURED_CITY_ATTACH',			'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_HOLY_POINTS_CAPTURED_CITY',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_HOLY_SITE'),
		('MER_INDUSTRIAL_POINTS_CAPTURED_CITY_ATTACH',			'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',						'CITY_HAS_GOVERNOR'			),
		('MER_INDUSTRIAL_POINTS_CAPTURED_CITY',					'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',			'DISTRICT_IS_INDUSTRIAL_ZONE'),

		('MER_LOYALTY_CAPTURED_CITY_ATTACH',	'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',		null		),
		('MER_LOYALTY_CAPTURED_CITY',			'MODIFIER_SINGLE_CITY_ADJUST_IDENTITY_PER_TURN',		null		),

		('MER_HEAVY_CAVALRY_PRODUCTION_CITY_ATTACH',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						null		),
		('MER_HEAVY_CAVALRY_PRODUCTION_CITY',					'MODTYPE_MER_PALMYRA_HEAVY_CAVALRY_PRODUCTION',			null),
		('MER_HEAVY_CAVALRY_PRODUCTION_CONQUERED_CITY_ATTACH',	'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',		null		),
		('MER_HEAVY_CAVALRY_PRODUCTION_CONQUERED_CITY',			'MODTYPE_MER_PALMYRA_HEAVY_CAVALRY_PRODUCTION',			null);
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,						Value											)
VALUES	('MER_THEATRE_POINTS_FOUNDED_CITY_ATTACH',		'ModifierId',				'MER_THEATRE_POINTS_FOUNDED_CITY'						),
		('MER_THEATRE_POINTS_FOUNDED_CITY',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_WRITER'	),
		('MER_THEATRE_POINTS_FOUNDED_CITY',				'Amount',					1						),

		('MER_THEATRE_POINTS_FOUNDED_CITY_ATTACH2',		'ModifierId',				'MER_THEATRE_POINTS_FOUNDED_CITY2'						),
		('MER_THEATRE_POINTS_FOUNDED_CITY2',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_ARTIST'	),
		('MER_THEATRE_POINTS_FOUNDED_CITY2',				'Amount',					1						),

		('MER_THEATRE_POINTS_FOUNDED_CITY_ATTACH3',		'ModifierId',				'MER_THEATRE_POINTS_FOUNDED_CITY3'						),
		('MER_THEATRE_POINTS_FOUNDED_CITY3',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_MUSICIAN'	),
		('MER_THEATRE_POINTS_FOUNDED_CITY3',				'Amount',					1						),

		('MER_CAMPUS_POINTS_FOUNDED_CITY_ATTACH',		'ModifierId',				'MER_CAMPUS_POINTS_FOUNDED_CITY'						),
		('MER_CAMPUS_POINTS_FOUNDED_CITY',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_SCIENTIST'	),
		('MER_CAMPUS_POINTS_FOUNDED_CITY',				'Amount',					1						),

		('MER_ENCAMPMENT_POINTS_FOUNDED_CITY_ATTACH',		'ModifierId',				'MER_ENCAMPMENT_POINTS_FOUNDED_CITY'						),
		('MER_ENCAMPMENT_POINTS_FOUNDED_CITY',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_GENERAL'	),
		('MER_ENCAMPMENT_POINTS_FOUNDED_CITY',				'Amount',					1						),

		('MER_COMMERCIAL_POINTS_FOUNDED_CITY_ATTACH',		'ModifierId',				'MER_COMMERCIAL_POINTS_FOUNDED_CITY'						),
		('MER_COMMERCIAL_POINTS_FOUNDED_CITY',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_MERCHANT'	),
		('MER_COMMERCIAL_POINTS_FOUNDED_CITY',				'Amount',					1						),

		('MER_HOLY_POINTS_FOUNDED_CITY_ATTACH',		'ModifierId',				'MER_HOLY_POINTS_FOUNDED_CITY'						),
		('MER_HOLY_POINTS_FOUNDED_CITY',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_PROPHET'	),
		('MER_HOLY_POINTS_FOUNDED_CITY',				'Amount',					1						),

		('MER_INDUSTRIAL_POINTS_FOUNDED_CITY_ATTACH',		'ModifierId',				'MER_INDUSTRIAL_FOUNDED_CITY'						),
		('MER_INDUSTRIAL_POINTS_FOUNDED_CITY',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_ENGINEER'	),
		('MER_INDUSTRIAL_POINTS_FOUNDED_CITY',				'Amount',					1						),

		('MER_THEATRE_POINTS_CAPTURED_CITY_ATTACH',		'ModifierId',				'MER_THEATRE_POINTS_CAPTURED_CITY'						),
		('MER_THEATRE_POINTS_CAPTURED_CITY',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_WRITER'	),
		('MER_THEATRE_POINTS_CAPTURED_CITY',				'Amount',					1						),

		('MER_THEATRE_POINTS_CAPTURED_CITY_ATTACH2',		'ModifierId',				'MER_THEATRE_POINTS_CAPTURED_CITY2'						),
		('MER_THEATRE_POINTS_CAPTURED_CITY2',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_ARTIST'	),
		('MER_THEATRE_POINTS_CAPTURED_CITY2',				'Amount',					1						),

		('MER_THEATRE_POINTS_CAPTURED_CITY_ATTACH3',		'ModifierId',				'MER_THEATRE_POINTS_CAPTURED_CITY3'						),
		('MER_THEATRE_POINTS_CAPTURED_CITY3',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_MUSICIAN'	),
		('MER_THEATRE_POINTS_CAPTURED_CITY3',				'Amount',					1						),

		('MER_CAMPUS_POINTS_CAPTURED_CITY_ATTACH',		'ModifierId',				'MER_CAMPUS_POINTS_CAPTURED_CITY'						),
		('MER_CAMPUS_POINTS_CAPTURED_CITY',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_SCIENTIST'	),
		('MER_CAMPUS_POINTS_CAPTURED_CITY',				'Amount',					1						),

		('MER_ENCAMPMENT_POINTS_CAPTURED_CITY_ATTACH',		'ModifierId',				'MER_ENCAMPMENT_POINTS_CAPTURED_CITY'						),
		('MER_ENCAMPMENT_POINTS_CAPTURED_CITY',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_GENERAL'	),
		('MER_ENCAMPMENT_POINTS_CAPTURED_CITY',				'Amount',					1						),

		('MER_COMMERCIAL_POINTS_CAPTURED_CITY_ATTACH',		'ModifierId',				'MER_COMMERCIAL_POINTS_CAPTURED_CITY'						),
		('MER_COMMERCIAL_POINTS_CAPTURED_CITY',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_MERCHANT'	),
		('MER_COMMERCIAL_POINTS_CAPTURED_CITY',				'Amount',					1						),

		('MER_HOLY_POINTS_CAPTURED_CITY_ATTACH',		'ModifierId',				'MER_HOLY_POINTS_CAPTURED_CITY'						),
		('MER_HOLY_POINTS_CAPTURED_CITY',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_PROPHET'	),
		('MER_HOLY_POINTS_CAPTURED_CITY',				'Amount',					1						),

		('MER_INDUSTRIAL_POINTS_CAPTURED_CITY_ATTACH',		'ModifierId',				'MER_INDUSTRIAL_POINTS_CAPTURED_CITY'						),
		('MER_INDUSTRIAL_POINTS_CAPTURED_CITY',				'GreatPersonClassType',		'GREAT_PERSON_CLASS_ENGINEER'	),
		('MER_INDUSTRIAL_POINTS_CAPTURED_CITY',				'Amount',					1						),

		('MER_LOYALTY_CAPTURED_CITY_ATTACH',		'ModifierId',				'MER_LOYALTY_CAPTURED_CITY'						),
		('MER_LOYALTY_CAPTURED_CITY',						'Amount',					2						),

		('MER_HEAVY_CAVALRY_PRODUCTION_CITY_ATTACH',		'ModifierId',				'MER_HEAVY_CAVALRY_PRODUCTION_CITY'						),
		('MER_HEAVY_CAVALRY_PRODUCTION_CITY',				'PromotionClass',			'PROMOTION_CLASS_HEAVY_CAVALRY'	),
		('MER_HEAVY_CAVALRY_PRODUCTION_CITY',				'Amount',					25						),

		('MER_HEAVY_CAVALRY_PRODUCTION_CONQUERED_CITY_ATTACH',		'ModifierId',				'MER_HEAVY_CAVALRY_PRODUCTION_CONQUERED_CITY'						),
		('MER_HEAVY_CAVALRY_PRODUCTION_CONQUERED_CITY',				'PromotionClass',			'PROMOTION_CLASS_HEAVY_CAVALRY'	),
		('MER_HEAVY_CAVALRY_PRODUCTION_CONQUERED_CITY',				'Amount',					25						);

--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- CivilizationLeaders
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationLeaders	
		(CivilizationType,			LeaderType,					CapitalName)
VALUES	('CIVILIZATION_MER_PALMYRA',		'LEADER_MER_ZENOBIA',	'LOC_CITY_NAME_MER_PALMYRA_1');
--==========================================================================================================================
--==========================================================================================================================