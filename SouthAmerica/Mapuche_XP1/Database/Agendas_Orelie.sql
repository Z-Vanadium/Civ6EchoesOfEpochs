--==========================================================================================================================
-- AGENDA
--==========================================================================================================================
-- Types
-------------------------------------
INSERT INTO Types	
		(Type,										Kind)
VALUES	('TRAIT_AGENDA_LEU_ORELIE',				'KIND_TRAIT');	

-------------------------------------
-- HistoricalAgendas
-------------------------------------
INSERT INTO HistoricalAgendas	
		(LeaderType,					AgendaType)
VALUES	('LEADER_LEU_ORELIE',		'AGENDA_LEU_ORELIE');		

-------------------------------------			
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,						Name,									Description)
VALUES	('AGENDA_LEU_ORELIE',			'LOC_AGENDA_LEU_ORELIE_NAME',	'LOC_AGENDA_LEU_ORELIE_DESCRIPTION');	
			
-------------------------------------
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,									Description)
VALUES	('TRAIT_AGENDA_LEU_ORELIE',		'LOC_PLACEHOLDER',						'LOC_PLACEHOLDER');	
			
-------------------------------------
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,						TraitType)
VALUES	('AGENDA_LEU_ORELIE',		'TRAIT_AGENDA_LEU_ORELIE');		

-------------------------------------
-- Preferred and Excluded Agendas			
-------------------------------------				
INSERT INTO AgendaPreferredLeaders				
		(AgendaType,							LeaderType,					PercentageChance)
VALUES	('AGENDA_CITY_STATE_ALLY',				'LEADER_LEU_ORELIE',		5),
		('AGENDA_CITY_STATE_PROTECTOR',			'LEADER_LEU_ORELIE',		5),
		('AGENDA_TURTLER',						'LEADER_LEU_ORELIE',		5),
		('AGENDA_EXPLORER',						'LEADER_LEU_ORELIE',		5);

INSERT INTO ExclusiveAgendas
		(AgendaOne,					AgendaTwo)
VALUES	('AGENDA_LEU_ORELIE',		'AGENDA_DARWINIST'),
		('AGENDA_LEU_ORELIE',		'AGENDA_BARBARIAN_LOVER'),
		('AGENDA_LEU_ORELIE',		'AGENDA_CIVILIZED'),
		('AGENDA_LEU_ORELIE',		'AGENDA_EXPANSIONIST');
		
-------------------------------------
-- TraitModifiers		
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,						ModifierId)
VALUES	('TRAIT_AGENDA_LEU_ORELIE',		'LEU_ORELIE_LIKES_OPEN_BORDERS'),
		('TRAIT_AGENDA_LEU_ORELIE',		'LEU_ORELIE_HATES_CHILEANS');

--==========================================================================================================================
--==========================================================================================================================
-- Likes Civilizations that have Open Borders with him
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,							ModifierType,										OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	('LEU_ORELIE_LIKES_OPEN_BORDERS',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'ON_TURN_STARTED',			'PLAYER_OPEN_BORDERS');

INSERT INTO ModifierArguments
		(ModifierId,						Name,								Value)
VALUES	('LEU_ORELIE_LIKES_OPEN_BORDERS',		'InitialValue',						6),
		('LEU_ORELIE_LIKES_OPEN_BORDERS',		'SimpleModifierDescription',		'LOC_DIPLO_MODIFIER_LEU_ORELIE_POSITIVE'),
		('LEU_ORELIE_LIKES_OPEN_BORDERS',		'StatementKey',						'LOC_DIPLO_KUDO_LEADER_LEU_ORELIE_REASON_ANY');		
		
INSERT INTO ModifierStrings
		(ModifierId,							Context,						Text)
VALUES	('LEU_ORELIE_LIKES_OPEN_BORDERS',		'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');

--==========================================================================================================================
--==========================================================================================================================
-- Dislikes those that clear Barbarian Camps
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,						ModifierType,								OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	('LEU_ORELIE_HATES_CHILEANS',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	null,						'PLAYER_CLEARS_BARBARIAN_CAMPS');

INSERT INTO ModifierArguments
		(ModifierId,						Name,								Value)
VALUES	('LEU_ORELIE_HATES_CHILEANS',		'InitialValue',						-12),
		('LEU_ORELIE_HATES_CHILEANS',		'SimpleModifierDescription',		'LOC_DIPLO_MODIFIER_LEU_ORELIE_NEGATIVE'),
		('LEU_ORELIE_HATES_CHILEANS',		'StatementKey',						'LOC_DIPLO_WARNING_LEADER_LEU_ORELIE_REASON_ANY');		

INSERT INTO ModifierStrings
		(ModifierId,								Context,				Text)
VALUES	('LEU_ORELIE_HATES_CHILEANS',		'Sample',				'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');

--==========================================================================================================================
-- LEADERS: AI
--==========================================================================================================================
-- Forced Traits:
-------------------
-- Forced Traits(tm) are how I call these weird internal traits some leaders have to focus their behaviour. They are a bit limited, but useful:
---- TRAIT_LEADER_PURSUE_DIPLOMATIC_VICTORY
---- TRAIT_LEADER_CULTURAL_MAJOR_CIV
---- TRAIT_LEADER_RELIGIOUS_MAJOR_CIV
---- TRAIT_LEADER_SCIENCE_MAJOR_CIV
---- TRAIT_LEADER_NONRELIGIOUS_MAJOR_CIV
---- TRAIT_LEADER_EXPANSIONIST
---- TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE
---- TRAIT_LEADER_LOW_CITY_STATE_PREFERENCE
---- TRAIT_LEADER_AGGRESSIVE_MILITARY
------------------
INSERT INTO LeaderTraits
		(LeaderType,			TraitType)
VALUES	('LEADER_LEU_ORELIE',	'TRAIT_LEADER_PURSUE_DIPLOMATIC_VICTORY');
		
-------------------------------------
-- AiListTypes
-------------------------------------
INSERT INTO AiListTypes	
		(ListType)
VALUES	('LEU_ORELIE_Victories'),
		('LEU_ORELIE_Settle'),
		('LEU_ORELIE_Diplo'),
		('LEU_ORELIE_PseudoYields'),
		('LEU_ORELIE_Yields'),
		('LEU_ORELIE_Builds'),
		('LEU_ORELIE_Operations'),
		('LEU_ORELIE_Exploration'),
		('LEU_ORELIE_Alliances'),
		('LEU_ORELIE_Discussions'),
		('LEU_ORELIE_Resolutions'),
		('LEU_ORELIE_UnitPromoClasses');

-------------------------------------
-- AiLists
-------------------------------------
	
INSERT INTO AiLists	
		(ListType,								LeaderType,								System)
VALUES	('LEU_ORELIE_Victories',			'TRAIT_AGENDA_LEU_ORELIE',		'Strategies'),
		('LEU_ORELIE_Settle',		'TRAIT_AGENDA_LEU_ORELIE',		'PlotEvaluations'),
		('LEU_ORELIE_Diplo',				'TRAIT_AGENDA_LEU_ORELIE',		'DiplomaticActions'),
		('LEU_ORELIE_PseudoYields',		'TRAIT_AGENDA_LEU_ORELIE',		'PseudoYields'),
		('LEU_ORELIE_Yields',			'TRAIT_AGENDA_LEU_ORELIE',		'Yields'),
		('LEU_ORELIE_Builds',			'TRAIT_AGENDA_LEU_ORELIE',		'AiBuildSpecializations'),
		('LEU_ORELIE_Operations',			'TRAIT_AGENDA_LEU_ORELIE',		'AiOperationTypes'),
		('LEU_ORELIE_Exploration',			'TRAIT_AGENDA_LEU_ORELIE',		'AiScoutUses'),
		('LEU_ORELIE_Alliances',			'TRAIT_AGENDA_LEU_ORELIE',		'Alliances'),
		('LEU_ORELIE_Discussions',		'TRAIT_AGENDA_LEU_ORELIE',		'Discussions'),
		('LEU_ORELIE_Resolutions',		'TRAIT_AGENDA_LEU_ORELIE',		'Resolutions'),
		('LEU_ORELIE_UnitPromoClasses',	'TRAIT_AGENDA_LEU_ORELIE',		'UnitPromotionClasses');
		
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
VALUES	('LEU_ORELIE_Victories',			'VICTORY_STRATEGY_MILITARY_VICTORY',	null,						1,			5),
		('LEU_ORELIE_Victories',			'VICTORY_STRATEGY_DIPLOMATIC_VICTORY',	null,						1,			-2),

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
		('LEU_ORELIE_Settle',		'Foreign Continent',						null,						1,			50),
		('LEU_ORELIE_Settle',		'Cultural Pressure',						null,						1,			50),
		('LEU_ORELIE_Settle',		'Nearest Friendly City',					null,						1,			50),
		('LEU_ORELIE_Settle',		'Nearest Enemy City',						null,						1,			50),
		
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
		('LEU_ORELIE_Builds',		'BUILD_TRADE_UNITS',						null,						1,			0),
		('LEU_ORELIE_Builds',		'BUILD_FOR_CULTURE',						null,						1,			0),
		
		-- Preferred Ai Operations (better leave these ones out unless you want a very specific behaviour)
		---- ATTACK_BARBARIANS
		---- CITY_ASSAULT
		---- NAVAL_SUPERIORITY
		---- OP_DEFENSE
		---- OP_NUCLEAR
		---- OP_SETTLE
		---- OP_ESCORT
		('LEU_ORELIE_Operations',		'ATTACK_BARBARIANS',						null,						1,			-100),
			
		-- Preferred Ai Exploration (better leave these ones out unless you want a very specific behaviour)
		---- DEFAULT_LAND_SCOUTS
		---- DEFAULT_NAVAL_SCOUTS
		---- LAND_SCOUTS_PER_PRIMARY_REGION
		---- LAND_SCOUTS_PER_SECONDARY_REGION
		---- NAVAL_SCOUTS_FOR_WORLD_EXPLORATION
		('LEU_ORELIE_Exploration',		'LAND_SCOUTS_PER_SECONDARY_REGION',					null,						1,			0),
		('LEU_ORELIE_Exploration',		'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION',				null,						1,			0),
		
		-- Preferred Diplomatic Actions (From the DiplomaticActions table)
		('LEU_ORELIE_Diplo',			'DIPLOACTION_OPEN_BORDERS',							null,						1,			50),
		('LEU_ORELIE_Diplo',			'DIPLOACTION_REQUEST_ASSISTANCE',					null,						1,			20),
		('LEU_ORELIE_Diplo',			'DIPLOACTION_ALLIANCE',								null,						1,			50),
		('LEU_ORELIE_Diplo',			'DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR',	null,						1,			-200),

		-- Preferred Pseudoyields (From the PseudoYields table)
		('LEU_ORELIE_PseudoYields',		'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',		null,						1,			-200),
		('LEU_ORELIE_PseudoYields',		'PSEUDOYIELD_ENVIRONMENT',				null,						1,			0),
		('LEU_ORELIE_PseudoYields',		'PSEUDOYIELD_INFLUENCE',				null,						1,			20),
		('LEU_ORELIE_PseudoYields',		'PSEUDOYIELD_UNIT_ARCHAEOLOGIST',		null,						1,			20),
		('LEU_ORELIE_PseudoYields',		'PSEUDOYIELD_UNIT_EXPLORER',			null,						1,			20),
		('LEU_ORELIE_PseudoYields',		'PSEUDOYIELD_DIPLOMATIC_BONUS',			null,						1,			50),
		('LEU_ORELIE_PseudoYields',		'PSEUDOYIELD_DIPLOMATIC_FAVOR',			null,						1,			50),

		-- Preferred Yields (From the Yields table)
		('LEU_ORELIE_Yields',			'YIELD_CULTURE',						null,						1,			50),

		-- Preferred Alliances (From the Alliances table)
		('LEU_ORELIE_Alliances',			'ALLIANCE_ECONOMIC',				null,						1,			20),
		('LEU_ORELIE_Alliances',			'ALLIANCE_CULTURAL',				null,						1,			20),

		-- Preferred Unit Promotion Classes (From the UnitPromotionClasses table)
		('LEU_ORELIE_UnitPromoClasses',	'PROMOTION_CLASS_RECON',				null,						1,			0),
		('LEU_ORELIE_UnitPromoClasses',	'PROMOTION_CLASS_LIGHT_CAVALRY',		null,						1,			0),

		-- Preferred Discussions (Emergencies and Competitions... In this case I prefer putting a preference/dislike to all)
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_MILITARY',				null,						1,			0),
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_CITY_STATE',				null,						1,			0),
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_RELIGIOUS',				null,						0,			0),
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_NUCLEAR',					null,						1,			0),
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_BACKSTAB',				null,						1,			0),
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_REQUEST_AID',				null,						1,			0),
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_LITERATURE',	null,						1,			0),
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_PEACE',		null,						1,			0),
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',		null,						0,			0),
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_CLIMATE_ACCORDS',			null,						1,			0),
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_WORLD_GAMES',				null,						1,			0),
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_SPACE_STATION',			null,						1,			0),
		('LEU_ORELIE_Discussions',		'WC_EMERGENCY_WORLD_FAIR',				null,						1,			0),

		-- Preferred Resolutions (In this case I also prefer putting a preference/dislike to all)
		('LEU_ORELIE_Resolutions',		'WC_RES_ARMS_CONTROL',					null,						0,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_BORDER_CONTROL',				null,						0,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_DEFORESTATION_TREATY',			null,						0,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_DIPLOVICTORY',					null,						1,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_ESPIONAGE_PACT',				null,						1,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_GLOBAL_ENERGY_TREATY',			null,						1,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_HERITAGE_ORG',					null,						0,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_LUXURY',						null,						1,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_MERCENARY_COMPANIES',			null,						1,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_MIGRATION_TREATY',				null,						0,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_MILITARY_ADVISORY',				null,						1,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_PATRONAGE',						null,						0,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_PUBLIC_RELATIONS',				null,						0,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_PUBLIC_WORKS',					null,						0,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_SOVEREIGNTY',					null,						1,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_TRADE_TREATY',					null,						1,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_URBAN_DEVELOPMENT',				null,						1,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_WORLD_IDEOLOGY',				null,						0,			0),
		('LEU_ORELIE_Resolutions',		'WC_RES_WORLD_RELIGION',				null,						1,			0);

--==========================================================================================================================
--==========================================================================================================================
