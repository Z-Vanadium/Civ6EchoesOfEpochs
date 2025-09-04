--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('LEADER_MER_KARL_XII',		'KIND_LEADER');
----------------------------------------------------------------------------------------------------------------------------
-- Leaders
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,				Name,								InheritFrom,		SceneLayers)
VALUES	('LEADER_MER_KARL_XII',		'LOC_LEADER_MER_KARL_XII_NAME',	'LEADER_DEFAULT',	4);
----------------------------------------------------------------------------------------------------------------------------
-- LeaderQuotes
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,				Quote)
VALUES	('LEADER_MER_KARL_XII',		'LOC_PEDIA_LEADERS_PAGE_LEADER_MER_KARL_XII_QUOTE');
----------------------------------------------------------------------------------------------------------------------------
-- HistoricalAgendas
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,				AgendaType)
VALUES	('LEADER_MER_KARL_XII',		'AGENDA_MER_CAROLUS_REX');
----------------------------------------------------------------------------------------------------------------------------
-- LeaderTraits
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,				TraitType)
VALUES	('LEADER_MER_KARL_XII',		'TRAIT_LEADER_MER_NEVER_AN_UNJUST_WAR'),
		('LEADER_MER_KARL_XII',		'TRAIT_LEADER_UNIT_MER_DRABANT');
----------------------------------------------------------------------------------------------------------------------------
-- FavoredReligions
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO FavoredReligions	
		(LeaderType,				ReligionType)
VALUES	('LEADER_MER_KARL_XII',		'RELIGION_PROTESTANTISM');

--==========================================================================================================================
-- LEADERS: AGENDAS
--==========================================================================================================================
-- Types
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,													Kind)
VALUES	('TRAIT_AGENDA_MER_CAROLUS_REX',					'KIND_TRAIT');			
----------------------------------------------------------------------------------------------------------------------------					
-- Agendas			
----------------------------------------------------------------------------------------------------------------------------						
INSERT INTO Agendas					
		(AgendaType,											Name,												Description)
VALUES	('AGENDA_MER_CAROLUS_REX',							'LOC_AGENDA_MER_CAROLUS_REX_NAME',				'LOC_AGENDA_MER_CAROLUS_REX_DESCRIPTION');	
----------------------------------------------------------------------------------------------------------------------------					
-- Traits			
----------------------------------------------------------------------------------------------------------------------------						
INSERT INTO Traits				
		(TraitType,												Name,												Description)
VALUES	('TRAIT_AGENDA_MER_CAROLUS_REX',					'LOC_PLACEHOLDER',									'LOC_PLACEHOLDER');
----------------------------------------------------------------------------------------------------------------------------					
-- AgendaTraits			
----------------------------------------------------------------------------------------------------------------------------						
INSERT INTO AgendaTraits				
		(AgendaType,											TraitType)
VALUES	('AGENDA_MER_CAROLUS_REX',							'TRAIT_AGENDA_MER_CAROLUS_REX');	
----------------------------------------------------------------------------------------------------------------------------		
-- TraitModifiers		
----------------------------------------------------------------------------------------------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,												ModifierId)
VALUES	('TRAIT_AGENDA_MER_CAROLUS_REX',					'MER_CAROLUS_REX_MODIFIER_STANDING_ARMY'),
		('TRAIT_AGENDA_MER_CAROLUS_REX',					'MER_CAROLUS_REX_MODIFIER_SURPRISE_WAR');	
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,											ModifierType,									SubjectRequirementSetId)
VALUES	('MER_CAROLUS_REX_MODIFIER_STANDING_ARMY',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'PLAYER_HAS_HIGH_STANDING_ARMY'),
		('MER_CAROLUS_REX_MODIFIER_SURPRISE_WAR',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'PLAYER_DECLARES_SURPRISE_WAR');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,												Value)
VALUES	('MER_CAROLUS_REX_MODIFIER_STANDING_ARMY',			'InitialValue',										10),
		('MER_CAROLUS_REX_MODIFIER_STANDING_ARMY',			'StatementKey',										'LOC_DIPLO_WARNING_LEADER_MER_KARL_XII_REASON_STANDING_ARMY'),
		('MER_CAROLUS_REX_MODIFIER_STANDING_ARMY',			'SimpleModifierDescription',						'LOC_DIPLO_MODIFIER_AGENDA_MER_CAROLUS_REX_STANDING_ARMY'),
		('MER_CAROLUS_REX_MODIFIER_SURPRISE_WAR',			'InitialValue',										-15),
		('MER_CAROLUS_REX_MODIFIER_SURPRISE_WAR',			'StatementKey',										'LOC_DIPLO_WARNING_LEADER_MER_KARL_XII_REASON_SURPRISE_WAR'),
		('MER_CAROLUS_REX_MODIFIER_SURPRISE_WAR',			'SimpleModifierDescription',						'LOC_DIPLO_MODIFIER_AGENDA_MER_CAROLUS_REX_SURPRISE_WAR');
--------------------------------------------------------------------------------------------------------------------------		
-- ModifierStrings		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO ModifierStrings			
		(ModifierId,											Context,											Text)
VALUES	('MER_CAROLUS_REX_MODIFIER_STANDING_ARMY',			'Sample',											'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('MER_CAROLUS_REX_MODIFIER_SURPRISE_WAR',			'Sample',											'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
	
--==========================================================================================================================
-- LEADERS: LOADING INFO
--==========================================================================================================================
-- LoadingInfo
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,					BackgroundImage, 					ForegroundImage,					PlayDawnOfManAudio)
VALUES	('LEADER_MER_KARL_XII',		'LEADER_HOJO_BACKGROUND',	'LEADER_MER_KARL_XII_NEUTRAL',		0);	
--==========================================================================================================================
-- LEADERS: TRAITS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,											Kind)
VALUES	('TRAIT_LEADER_MER_NEVER_AN_UNJUST_WAR',			'KIND_TRAIT'),
		('TRAIT_LEADER_UNIT_MER_DRABANT',			'KIND_TRAIT');	
--------------------------------------------------------------------------------------------------------------------------			
-- Traits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,										Name,													Description)
VALUES	('TRAIT_LEADER_MER_NEVER_AN_UNJUST_WAR',			'LOC_TRAIT_LEADER_MER_NEVER_AN_UNJUST_WAR_NAME',			'LOC_TRAIT_LEADER_MER_NEVER_AN_UNJUST_WAR_DESCRIPTION'),
		('TRAIT_LEADER_UNIT_MER_DRABANT',			'LOC_UNIT_MER_DRABANT_NAME',			'LOC_UNIT_MER_DRABANT_DESCRIPTION');	
-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,									ModifierId				)
VALUES	('TRAIT_LEADER_MER_NEVER_AN_UNJUST_WAR',	'MER_KARL_MOVEMENT'	),
		('TRAIT_LEADER_MER_NEVER_AN_UNJUST_WAR',	'MER_KARL_EXPERIENCE'	);	
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,										SubjectRequirementSetId				)
VALUES	('MER_KARL_MOVEMENT',								'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				null											),
		('MER_KARL_EXPERIENCE',								'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				null			);
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,						Value											)
VALUES	('MER_KARL_MOVEMENT',						'AbilityType',				'ABILITY_MER_KARL_MOVEMENT'						),
		('MER_KARL_EXPERIENCE',						'AbilityType',				'ABILITY_MER_KARL_EXPERIENCE'					);			
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId					)
VALUES	('REQSET_IS_MER_KARL_XII',		'REQ_IS_MER_KARL_XII'		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_IS_MER_KARL_XII',			'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType								)
VALUES	('REQ_IS_MER_KARL_XII',				'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);
		
-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,				Name,							Value							)
VALUES	('REQ_IS_MER_KARL_XII',		'LeaderType',					'LEADER_MER_KARL_XII'		);
-----------------------------------------------
-- Types
-------------------------------------	

INSERT INTO Types	
		(Type,									Kind)
VALUES	('ABILITY_MER_KARL_MOVEMENT',		'KIND_ABILITY'),
		('ABILITY_MER_KARL_EXPERIENCE',		'KIND_ABILITY');	
	
-----------------------------------------------
-- TypeTags
-------------------------------------	

INSERT INTO TypeTags	
		(Type,									Tag)
VALUES	('ABILITY_MER_KARL_MOVEMENT',		'CLASS_RECON'),
		('ABILITY_MER_KARL_MOVEMENT',		'CLASS_MELEE'),
		('ABILITY_MER_KARL_MOVEMENT',		'CLASS_ANTI_CAVALRY'),
		('ABILITY_MER_KARL_MOVEMENT',		'CLASS_RANGED'),
		('ABILITY_MER_KARL_MOVEMENT',		'CLASS_SIEGE'),
		('ABILITY_MER_KARL_MOVEMENT',		'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MER_KARL_MOVEMENT',		'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MER_KARL_MOVEMENT',		'CLASS_RANGED_CAVALRY'),
		('ABILITY_MER_KARL_MOVEMENT',		'CLASS_HEAVY_CHARIOT'),
		('ABILITY_MER_KARL_MOVEMENT',		'CLASS_LIGHT_CHARIOT'),
		('ABILITY_MER_KARL_MOVEMENT',		'CLASS_WARRIOR_MONK'),

		('ABILITY_MER_KARL_EXPERIENCE',		'CLASS_RECON'),
		('ABILITY_MER_KARL_EXPERIENCE',		'CLASS_MELEE'),
		('ABILITY_MER_KARL_EXPERIENCE',		'CLASS_ANTI_CAVALRY'),
		('ABILITY_MER_KARL_EXPERIENCE',		'CLASS_RANGED'),
		('ABILITY_MER_KARL_EXPERIENCE',		'CLASS_SIEGE'),
		('ABILITY_MER_KARL_EXPERIENCE',		'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MER_KARL_EXPERIENCE',		'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MER_KARL_EXPERIENCE',		'CLASS_RANGED_CAVALRY'),
		('ABILITY_MER_KARL_EXPERIENCE',		'CLASS_HEAVY_CHARIOT'),
		('ABILITY_MER_KARL_EXPERIENCE',		'CLASS_LIGHT_CHARIOT'),
		('ABILITY_MER_KARL_EXPERIENCE',		'CLASS_WARRIOR_MONK');

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO	UnitAbilities
		(UnitAbilityType,								Name,													Description,			Inactive							)
VALUES	('ABILITY_MER_KARL_MOVEMENT',		'LOC_TRAIT_LEADER_MER_NEVER_AN_UNJUST_WAR_NAME',		'LOC_ABILITY_MER_KARL_MOVEMENT_DESC',			1							),
		('ABILITY_MER_KARL_EXPERIENCE',		'LOC_TRAIT_LEADER_MER_NEVER_AN_UNJUST_WAR_NAME',		'LOC_ABILITY_MER_KARL_EXPERIENCE_DESC',			1							);

INSERT INTO	UnitAbilityModifiers
		(UnitAbilityType,									ModifierId				)
VALUES	('ABILITY_MER_KARL_MOVEMENT',			'MODIFIER_MER_KARL_MOVEMENT'			),
		('ABILITY_MER_KARL_EXPERIENCE',			'MODIFIER_MER_KARL_EXPERIENCE'		);
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,							ModifierType,																SubjectRequirementSetId				)
VALUES	('MODIFIER_MER_KARL_MOVEMENT',			'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',										'FRIENDLY_TERRITORY_REQUIREMENTS'	),
		('MODIFIER_MER_KARL_EXPERIENCE',		'MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER',						null	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,												Name,			Value					)
VALUES	('MODIFIER_MER_KARL_MOVEMENT',								'Amount',		1						),
		('MODIFIER_MER_KARL_EXPERIENCE',							'Amount',		15						);
	
--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- CivilizationLeaders
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationLeaders	
		(CivilizationType,			LeaderType,					CapitalName)
VALUES	('CIVILIZATION_SWEDEN',		'LEADER_MER_KARL_XII',	'LOC_CITY_NAME_STOCKHOLM');
--==========================================================================================================================
--==========================================================================================================================
--==========================================================================================================================
-- LEADERS: AI
--==========================================================================================================================
-- AiListTypes
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('KARL_XII_Buildings'),
		('KARL_XII_Districts'),
		('KARL_XII_Units'),
		('KARL_XII_Techs'),
		('KARL_XII_Civics');
--------------------------------------------------------------------------------------------------------------------------
-- AiLists
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AiLists	
		(ListType,						LeaderType,					System)
VALUES	('KARL_XII_Buildings',			'LEADER_MER_KARL_XII',		'Buildings'),
		('KARL_XII_Districts',			'LEADER_MER_KARL_XII',		'Districts'),
		('KARL_XII_Units',			'LEADER_MER_KARL_XII',		'Units'),
		('KARL_XII_Techs',			'LEADER_MER_KARL_XII',		'Technologies'),
		('KARL_XII_Civics',				'LEADER_MER_KARL_XII',		'Civics');		
--------------------------------------------------------------------------------------------------------------------------		
-- AiFavoredItems
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AiFavoredItems	
		(ListType,					Favored,	Value,							Item)
VALUES	('KARL_XII_Buildings',		1,			1,								'BUILDING_BARRACKS'), 
		('KARL_XII_Buildings',		1,			1,								'BUILDING_ARMORY'), 
		('KARL_XII_Buildings',		1,			1,								'BUILDING_ALHAMBRA'), 
		('KARL_XII_Buildings',		1,			20,								'BUILDING_TERRACOTTA_ARMY'), 
		('KARL_XII_Buildings',		1,			1,								'BUILDING_STATUE_OF_ZEUS'), 

		('KARL_XII_Districts',		1,			1,								'DISTRICT_CAMPUS'), 
		('KARL_XII_Districts',		1,			10,								'DISTRICT_ENCAMPMENT'), 
		('KARL_XII_Districts',		1,			1,								'DISTRICT_HARBOR'),

		('KARL_XII_Units',			1,			30,									'UNIT_SWEDEN_CAROLEAN'), 
		('KARL_XII_Units',			1,			30,									'UNIT_MER_DRABANT'), 
		('KARL_XII_Units',			1,			5,									'UNIT_BOMBARD'), 
		('KARL_XII_Units',			1,			3,									'UNIT_KNIGHT'), 

		('KARL_XII_Techs',			1,			1,									'TECH_APPRENTICESHIP'), 
		('KARL_XII_Techs',			1,			1,									'TECH_BRONZE_WORKING'), 
		('KARL_XII_Techs',			1,			1,									'TECH_MILITARY_SCIENCE'), 
		('KARL_XII_Techs',			1,			1,									'TECH_STIRRUPS'), 
		('KARL_XII_Techs',			1,			1,									'TECH_METAL_CASTING'),
		('KARL_XII_Techs',			1,			1,									'TECH_BALLISTICS'),

		('KARL_XII_Civics',			1,			1,									'CIVIC_MOBILIZATION'), 
		('KARL_XII_Civics',			1,			1,									'CIVIC_MERCENARIES'), 
		('KARL_XII_Civics',			1,			1,									'CIVIC_MILITARY_TRADITION'), 
		('KARL_XII_Civics',			1,			1,									'CIVIC_MILITARY_TRAINING'), 
		('KARL_XII_Civics',			1,			1,									'CIVIC_NATIONALISM');
-------------------------------------
-- Preferred and Excluded Agendas
-------------------------------------		
		
INSERT INTO AgendaPreferredLeaders				
		(AgendaType,						LeaderType,						PercentageChance)
VALUES	('AGENDA_CULTURED',					'LEADER_MER_KARL_XII',			10),
		('AGENDA_DEVOUT',					'LEADER_MER_KARL_XII',			10),
		('AGENDA_CITY_STATE_PROTECTOR',		'LEADER_MER_KARL_XII',			10),
		('AGENDA_CIVILIZED',				'LEADER_MER_KARL_XII',			10),
		('AGENDA_GREAT_PERSON_ADVOCATE',	'LEADER_MER_KARL_XII',			10),
		('AGENDA_DARWINIST',				'LEADER_MER_KARL_XII',			10);

INSERT INTO ExclusiveAgendas
		(AgendaOne,										AgendaTwo)
VALUES	('AGENDA_MER_CAROLUS_REX',		'AGENDA_STANDING_ARMY'),
		('AGENDA_MER_CAROLUS_REX',		'AGENDA_EXPANSIONIST'),
		('AGENDA_MER_CAROLUS_REX',		'AGENDA_PARANOID'),
		('AGENDA_MER_CAROLUS_REX',		'AGENDA_TURTLER');
-------------------------------------
-- AiListTypes
-------------------------------------
INSERT INTO AiListTypes	
		(ListType)
VALUES	('MER_KARL_XII_Victories'),
		('MER_KARL_XII_Settle'),
		('MER_KARL_XII_Settlement'),
		('MER_KARL_XII_Diplo'),
		('MER_KARL_XII_PseudoYields'),
		('MER_KARL_XII_Yields'),
		('MER_KARL_XII_Builds'),
		('MER_KARL_XII_Operations'),
		('MER_KARL_XII_Exploration'),
		('MER_KARL_XII_Alliances'),
		('MER_KARL_XII_Discussions'),
		('MER_KARL_XII_Resolutions'),
		('MER_KARL_XII_UnitPromoClasses');

-------------------------------------
-- AiLists
-------------------------------------
	
INSERT INTO AiLists	
		(ListType,								LeaderType,								System)
VALUES	('MER_KARL_XII_Victories',			'TRAIT_AGENDA_MER_KARL_XII',		'Strategies'),
		('MER_KARL_XII_Settle',			'TRAIT_AGENDA_MER_KARL_XII',		'PlotEvaluations'),
		('MER_KARL_XII_Settlement',			'TRAIT_AGENDA_MER_KARL_XII',		'SettlementPreferences'),
		('MER_KARL_XII_Diplo',				'TRAIT_AGENDA_MER_KARL_XII',		'DiplomaticActions'),
		('MER_KARL_XII_PseudoYields',		'TRAIT_AGENDA_MER_KARL_XII',		'PseudoYields'),
		('MER_KARL_XII_Yields',			'TRAIT_AGENDA_MER_KARL_XII',		'Yields'),
		('MER_KARL_XII_Builds',			'TRAIT_AGENDA_MER_KARL_XII',		'AiBuildSpecializations'),
		('MER_KARL_XII_Operations',		'TRAIT_AGENDA_MER_KARL_XII',		'AiOperationTypes'),
		('MER_KARL_XII_Exploration',		'TRAIT_AGENDA_MER_KARL_XII',		'AiScoutUses'),
		('MER_KARL_XII_Alliances',			'TRAIT_AGENDA_MER_KARL_XII',		'Alliances'),
		('MER_KARL_XII_Discussions',		'TRAIT_AGENDA_MER_KARL_XII',		'Discussions'),
		('MER_KARL_XII_Resolutions',		'TRAIT_AGENDA_MER_KARL_XII',		'Resolutions'),
		('MER_KARL_XII_UnitPromoClasses',	'TRAIT_AGENDA_MER_KARL_XII',		'UnitPromotionClasses');
		
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
VALUES	('MER_KARL_XII_Victories',			'VICTORY_STRATEGY_DIPLOMATIC_VICTORY',		null,						1,			2),
		('MER_KARL_XII_Victories',			'VICTORY_STRATEGY_MILITARY_VICTORY',		null,						1,			-2),
		('MER_KARL_XII_Victories',			'VICTORY_STRATEGY_RELIGIOUS_VICTORY',		null,						1,			2),
		('MER_KARL_XII_Victories',			'VICTORY_STRATEGY_CULTURAL_VICTORY',		null,						1,			0),
		('MER_KARL_XII_Victories',			'VICTORY_STRATEGY_SCIENCE_VICTORY',		null,							1,			0),
		('MER_KARL_XII_Victories',			'STRATEGY_RAPID_EXPANSION',		null,									1,			50),
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
		('MER_KARL_XII_Settle',		'Nearest Enemy City',						null,						1,			0),
		('MER_KARL_XII_Settle',		'Foreign Continent',						null,						1,			0),

		('MER_KARL_XII_Settlement',		'SETTLEMENT_CITY_MINIMUM_VALUE',			null,						1,			50),
		('MER_KARL_XII_Settlement',		'SETTLEMENT_CITY_VALUE_MULTIPLIER',			null,						1,			1),
		('MER_KARL_XII_Settlement',		'SETTLEMENT_DECAY_AMOUNT',			null,						1,			3),
		('MER_KARL_XII_Settlement',		'SETTLEMENT_DECAY_TURNS',			null,						1,			-3),
		('MER_KARL_XII_Settlement',		'SETTLEMENT_MIN_VALUE_NEEDED',			null,						1,			-25),
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
		('MER_KARL_XII_Builds',		'BUILD_MILITARY_UNITS',							null,						1,			20),
		('MER_KARL_XII_Builds',		'BUILD_FOR_SCIENCE',							null,						1,			0),		
		-- Preferred Ai Operations (better leave these ones out unless you want a very specific behaviour)
		---- ATTACK_BARBARIANS
		---- CITY_ASSAULT
		---- NAVAL_SUPERIORITY
		---- OP_DEFENSE
		---- OP_NUCLEAR
		---- OP_SETTLE
		---- OP_ESCORT
		('MER_KARL_XII_Operations',		'OP_SETTLE',					null,						1,			0),
		('MER_KARL_XII_Operations',		'OP_ESCORT',					null,						1,			0),
		('MER_KARL_XII_Operations',		'CITY_ASSAULT',			null,						1,			0),		
		-- Preferred Ai Exploration (better leave these ones out unless you want a very specific behaviour)
		---- DEFAULT_LAND_SCOUTS
		---- DEFAULT_NAVAL_SCOUTS
		---- LAND_SCOUTS_PER_PRIMARY_REGION
		---- LAND_SCOUTS_PER_SECONDARY_REGION
		---- NAVAL_SCOUTS_FOR_WORLD_EXPLORATION
		('MER_KARL_XII_Exploration',		'LAND_SCOUTS_PER_PRIMARY_REGION',		null,						1,			0),
					
		-- Preferred Diplomatic Actions (From the DiplomaticActions table)
		('MER_KARL_XII_Diplo',			'DIPLOACTION_OPEN_BORDERS',									null,							0,			0),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_JOINT_WAR',									null,							1,			10),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_DECLARE_SURPRISE_WAR',									null,					1,			-200),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_RESIDENT_EMBASSY',								null,							1,			20),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_DENOUNCE',										null,							1,			20),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_DECLARE_FORMAL_WAR',								null,						1,			0),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_DECLARE_GOLDEN_AGE_WAR',							null,						1,			20),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_DECLARE_TERRITORIAL_WAR',							null,						1,			20),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_DECLARE_FRIENDSHIP',								null,						1,			0),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_ALLIANCE_RESEARCH',								null,						1,			0),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_ALLIANCE_ECONOMIC',								null,						1,			0),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_ALLIANCE_MILITARY',								null,						1,			0),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_ALLIANCE_CULTURAL',								null,						1,			0),
		('MER_KARL_XII_Diplo',			'DIPLOACTION_ALLIANCE_RELIGIOUS',								null,						1,			0),	
		('MER_KARL_XII_Diplo',			'DIPLOACTION_MAKE_PEACE',							null,						0,			-100),			
		('MER_KARL_XII_Diplo',			'DIPLOACTION_PROPOSE_PEACE_DEAL',							null,						0,			-100),			
		('MER_KARL_XII_Diplo',			'DIPLOACTION_KEEP_PROMISE_DONT_DIG_ARTIFACTS',						null,						0,			0),		
		('MER_KARL_XII_Diplo',			'DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR',						null,						0,			0),	
		('MER_KARL_XII_Diplo',			'DIPLOACTION_KEEP_PROMISE_DONT_SPY',						null,						0,			0),	
		-- Preferred Pseudoyields (From the PseudoYields table)
		('MER_KARL_XII_PseudoYields',		'PSEUDOYIELD_UNIT_COMBAT',							null,				1,			20),
		('MER_KARL_XII_PseudoYields',		'PSEUDOYIELD_GPP_SCIENTIST',							null,			1,			0),
		('MER_KARL_XII_PseudoYields',		'PSEUDOYIELD_GPP_GENERAL',						null,						1,			0),
		('MER_KARL_XII_PseudoYields',		'PSEUDOYIELD_SETTLER',						null,						1,			10),

		-- Preferred Yields (From the Yields table)
		('MER_KARL_XII_Yields',				'YIELD_SCIENCE',								null,						1,			0),
		('MER_KARL_XII_Yields',				'YIELD_PRODUCTION',								null,						1,			0),
		-- Preferred Alliances (From the Alliances table)
		('MER_KARL_XII_Alliances',			'ALLIANCE_MILITARY',							null,						1,			0),

		-- Preferred Unit Promotion Classes (From the UnitPromotionClasses table)
		('MER_KARL_XII_UnitPromoClasses',	'PROMOTION_CLASS_MELEE',							null,						1,			0),
		('MER_KARL_XII_UnitPromoClasses',	'PROMOTION_CLASS_ANTI_CAVALRY',						null,						1,			50),
		('MER_KARL_XII_UnitPromoClasses',	'PROMOTION_CLASS_HEAVY_CAVALRY',					null,						1,			50),
		-- Preferred Discussions (Emergencies and Competitions... In this case I prefer putting a preference/dislike to all)
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_MILITARY',				null,						1,			10),
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_CITY_STATE',				null,						1,			10),
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_RELIGIOUS',				null,						1,			0),
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_NUCLEAR',					null,						1,			0),
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_BACKSTAB',				null,						1,			10),
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_REQUEST_AID',				null,						1,			0),
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_LITERATURE',	null,						1,			0),
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_PEACE',		null,						1,			0),
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',		null,						1,			0),
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_CLIMATE_ACCORDS',			null,						1,			0),
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_WORLD_GAMES',				null,						1,			0),
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_SPACE_STATION',			null,						1,			0),
		('MER_KARL_XII_Discussions',		'WC_EMERGENCY_WORLD_FAIR',				null,						1,			0),

		-- Preferred Resolutions (In this case I also prefer putting a preference/dislike to all)
		('MER_KARL_XII_Resolutions',		'WC_RES_ARMS_CONTROL',					null,						1,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_BORDER_CONTROL',				null,						1,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_DEFORESTATION_TREATY',			null,						1,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_DIPLOVICTORY',					null,						1,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_ESPIONAGE_PACT',				null,						0,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_GLOBAL_ENERGY_TREATY',			null,						0,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_HERITAGE_ORG',					null,						0,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_LUXURY',						null,						0,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_MERCENARY_COMPANIES',			null,						1,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_MIGRATION_TREATY',				null,						1,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_MILITARY_ADVISORY',				null,						1,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_PATRONAGE',						null,						1,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_PUBLIC_RELATIONS',				null,						1,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_PUBLIC_WORKS',					null,						1,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_SOVEREIGNTY',					null,						1,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_TRADE_TREATY',					null,						1,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_URBAN_DEVELOPMENT',				null,						0,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_WORLD_IDEOLOGY',				null,						0,			0),
		('MER_KARL_XII_Resolutions',		'WC_RES_WORLD_RELIGION',				null,						0,			0);


		
