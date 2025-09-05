--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('LEADER_GEDEMO_BISMARK',	'KIND_LEADER');
		

--------------------------------------------------------------------------------------------------------------------------
-- Leaders
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,										InheritFrom,		SceneLayers)
VALUES	('LEADER_GEDEMO_BISMARK',	'LOC_LEADER_GEDEMO_BISMARK',		'LEADER_DEFAULT',	4);	
--------------------------------------------------------------------------------------------------------------------------
-- LeaderQuotes
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,			Quote)
VALUES	('LEADER_GEDEMO_BISMARK',	'LOC_PEDIA_LEADERS_PAGE_LEADER_GEDEMO_BISMARK_QUOTE');	

--==========================================================================================================================
-- LEADER: AGENDAS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('TRAIT_AGENDA_GEDEMO_BISMARK',		'KIND_TRAIT');
--------------------------------------------------------------------------------------------------------------------------
-- Agendas
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Agendas
		(AgendaType,								Name,										Description)
VALUES	('AGENDA_GEDEMO_BISMARK',				'LOC_AGENDA_GEDEMO_BISMARK_NAME',		'LOC_AGENDA_GEDEMO_BISMARK_DESCRIPTION');
--------------------------------------------------------------------------------------------------------------------------
-- Traits
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Traits
		(TraitType,									Name,										Description)
VALUES	('TRAIT_AGENDA_GEDEMO_BISMARK',		'LOC_PLACEHOLDER',							'LOC_PLACEHOLDER');
--------------------------------------------------------------------------------------------------------------------------
-- AgendaTraits
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO AgendaTraits
		(AgendaType,								TraitType)
VALUES	('AGENDA_GEDEMO_BISMARK',				'TRAIT_AGENDA_WITH_SHIELD'),
		('AGENDA_GEDEMO_BISMARK',				'TRAIT_AGENDA_IGNORE_WARMONGERING');
--------------------------------------------------------------------------------------------------------------------------
-- ExclusiveAgendas
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ExclusiveAgendas
		(AgendaOne,									AgendaTwo)
VALUES	('AGENDA_GEDEMO_BISMARK',				'AGENDA_WITH_YOUR_SHIELD_OR_ON_IT');

--------------------------------------------------------------------------------------------------------------------------
-- HistoricalAgendas
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType)
VALUES	('LEADER_GEDEMO_BISMARK',	'AGENDA_GEDEMO_BISMARK');

--------------------------------------------------------------------------------------------------------------------------
-- AgendaPreferredLeaders
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AgendaPreferredLeaders	
		(LeaderType,					AgendaType)
VALUES	('LEADER_GEDEMO_BISMARK',	'AGENDA_STANDING_ARMY');	




--==========================================================================================================================
-- LEADERS: LOADING INFO
--==========================================================================================================================
-- LoadingInfo
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,						BackgroundImage, 						ForegroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_GEDEMO_BISMARK',		'LEADER_NEUTRAL_BACKGROUND',		'LEADER_BISMARK_NEUTRAL',			0);	
--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- Types
----------------------------------------------------------------------------------------------------------------------------	

----------------------------------------------------------------------------------------------------------------------------
-- Civilizations
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationLeaders	
		(CivilizationType,					LeaderType,										CapitalName)
VALUES	('CIVILIZATION_GERMANY',	'LEADER_GEDEMO_BISMARK',	'LOC_CITY_NAME_BERLIN');	
----------------------------------------------------------------------------------------------------------------------------			

----------------------------------------------------------------------------------------------------------------------------			
-------------------------------------
-- CityNames
-------------------------------------
INSERT INTO CityNames	
			(CivilizationType,				LeaderType,					SortIndex,	CityName)	
VALUES		('CIVILIZATION_GERMANY',		'LEADER_GEDEMO_BISMARK',		-1,			'LOC_CITY_NAME_BERLIN');	
			
--------------------------------------------------------------------------------------------------------------------------		
-- BackGround Art		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO DiplomacyInfo			
		(Type,								BackgroundImage)
VALUES	('LEADER_GEDEMO_BISMARK',		'ART_LEADER_BISMARK.dds');

--------------------------------------------------------------------------------------------------------------------------	
-- Types
--------------------------------------------------------------------------------------------------------------------------	

INSERT INTO Types	
		(Type,														Kind)
VALUES	('TRAIT_LEADER_GEDEMO_BISMARK',						'KIND_TRAIT');

--------------------------------------------------------------------------------------------------------------------------			
-- Traits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,													Name,													Description)
VALUES	('TRAIT_LEADER_GEDEMO_BISMARK',						'LOC_TRAIT_LEADER_GEDEMO_BISMARK_NAME',			'LOC_TRAIT_LEADER_GEDEMO_BISMARK_DESCRIPTION');	

--------------------------------------------------------------------------------------------------------------------------
-- LeaderTraits
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,			TraitType)
VALUES	('LEADER_GEDEMO_BISMARK',	'TRAIT_LEADER_GEDEMO_BISMARK');
		


-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,									ModifierId		)	
VALUES	('TRAIT_LEADER_GEDEMO_BISMARK',	'GEDEMO_BISMARCK_BARRACKS_CULTURE'),
		('TRAIT_LEADER_GEDEMO_BISMARK',	'GEDEMO_BISMARCK_STABLE_CULTURE'),
		('TRAIT_LEADER_GEDEMO_BISMARK',	'GEDEMO_BISMARCK_ARMORY_CULTURE'	),
		('TRAIT_LEADER_GEDEMO_BISMARK',	'GEDEMO_BISMARCK_MILITARY_ACADEMY_CULTURE'	),
		('TRAIT_LEADER_GEDEMO_BISMARK',	'GEDEMO_BISMARCK_CULTURE_GARRISON'	),
		('TRAIT_LEADER_GEDEMO_BISMARK',	'GEDEMO_BISMARCK_CHEAPER_BUILDING_RUHR_VALLEY'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,	SubjectRequirementSetId	)
VALUES	('GEDEMO_BISMARCK_BARRACKS_CULTURE',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', NULL),
		('GEDEMO_BISMARCK_STABLE_CULTURE',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', NULL),
		('GEDEMO_BISMARCK_ARMORY_CULTURE',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', NULL),
		('GEDEMO_BISMARCK_MILITARY_ACADEMY_CULTURE',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', NULL),
		('GEDEMO_BISMARCK_CULTURE_GARRISON',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 'CITY_HAS_GARRISON_UNIT_REQUIERMENT'),
		('GEDEMO_BISMARCK_CHEAPER_BUILDING_RUHR_VALLEY',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION', NULL);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,												Name,		Value	)
VALUES	('GEDEMO_BISMARCK_BARRACKS_CULTURE',		'YieldType',	'YIELD_CULTURE'		),
		('GEDEMO_BISMARCK_BARRACKS_CULTURE',		'BuildingType',	'BUILDING_BARRACKS'		),
		('GEDEMO_BISMARCK_BARRACKS_CULTURE',		'Amount',	1		),
		('GEDEMO_BISMARCK_STABLE_CULTURE',		'YieldType',	'YIELD_CULTURE'		),
		('GEDEMO_BISMARCK_STABLE_CULTURE',		'BuildingType',	'BUILDING_STABLE'		),
		('GEDEMO_BISMARCK_STABLE_CULTURE',		'Amount',	1		),
		('GEDEMO_BISMARCK_ARMORY_CULTURE',		'YieldType',	'YIELD_CULTURE'		),
		('GEDEMO_BISMARCK_ARMORY_CULTURE',		'BuildingType',	'BUILDING_ARMORY'		),
		('GEDEMO_BISMARCK_ARMORY_CULTURE',		'Amount',	2		),
		('GEDEMO_BISMARCK_MILITARY_ACADEMY_CULTURE',		'YieldType',	'YIELD_CULTURE'		),
		('GEDEMO_BISMARCK_MILITARY_ACADEMY_CULTURE',		'BuildingType',	'BUILDING_MILITARY_ACADEMY'		),
		('GEDEMO_BISMARCK_MILITARY_ACADEMY_CULTURE',		'Amount',	3		),
		('GEDEMO_BISMARCK_CULTURE_GARRISON',		'Amount',	10		),
		('GEDEMO_BISMARCK_CULTURE_GARRISON',		'YieldType',	'YIELD_CULTURE'		),
		('GEDEMO_BISMARCK_CHEAPER_BUILDING_RUHR_VALLEY',		'BuildingType',	'BUILDING_RUHR_VALLEY'		),
		('GEDEMO_BISMARCK_CHEAPER_BUILDING_RUHR_VALLEY',		'Amount',	'100'		);



-----------------------------------------------
-- AiListTypes
-----------------------------------------------

INSERT INTO AiListTypes
		(ListType										)
VALUES 	('LEADER_GEDEMO_BISMARK_TECHS'			),
		('LEADER_GEDEMO_BISMARK_CIVICS'		),
		('LEADER_GEDEMO_BISMARK_DISTRICTS'		),
		('LEADER_GEDEMO_BISMARK_BUILDINGS'		),
		('LEADER_GEDEMO_BISMARK_DIPLOMACY'		),
		('LEADER_GEDEMO_BISMARK_EXPANSION'		),
		('LEADER_GEDEMO_BISMARK_PSEUDOS'		);

-----------------------------------------------
-- AiLists
-----------------------------------------------

INSERT INTO AiLists
		(ListType,										LeaderType,								System						)
VALUES  ('LEADER_GEDEMO_BISMARK_TECHS',		'TRAIT_LEADER_GEDEMO_BISMARK',	'Technologies'				),
		('LEADER_GEDEMO_BISMARK_CIVICS',		'TRAIT_LEADER_GEDEMO_BISMARK',	'Civics'					),
		('LEADER_GEDEMO_BISMARK_DISTRICTS',	'TRAIT_LEADER_GEDEMO_BISMARK',	'Districts'					),
		('LEADER_GEDEMO_BISMARK_BUILDINGS',	'TRAIT_LEADER_GEDEMO_BISMARK',	'Buildings'					);
		
		
-----------------------------------------------
-- AiFavoredItems
-----------------------------------------------

INSERT INTO AiFavoredItems
		(ListType,										Item,										Favored,	StringVal		)
VALUES  -- TECHS
		('LEADER_GEDEMO_BISMARK_TECHS',		'TECH_MILITARY_SCIENCE',								1,			NULL						),
		('LEADER_GEDEMO_BISMARK_TECHS',		'TECH_MILITARY_ENGINEERING',						1,			NULL						),
		('LEADER_GEDEMO_BISMARK_TECHS',		'TECH_HORSEBACK_RIDING',						1,			NULL						),
		('LEADER_GEDEMO_BISMARK_TECHS',		'TECH_IRON_WORKING',							1,			NULL						),
		
		-- CIVICS
		('LEADER_GEDEMO_BISMARK_CIVICS',		'CIVIC_MILITARY_TRADITION',					1,			NULL						),
		('LEADER_GEDEMO_BISMARK_CIVICS',		'CIVIC_DEFENSIVE_TACTICS',					1,			NULL						),
		('LEADER_GEDEMO_BISMARK_CIVICS',		'CIVIC_MILITARY_TRAINING',						1,			NULL						),
		('LEADER_GEDEMO_BISMARK_CIVICS',		'CIVIC_DRAMA_POETRY',						1,			NULL						),
		
		
		-- WONDERS
		('LEADER_GEDEMO_BISMARK_BUILDINGS',	'BUILDING_BARRACKS',							1,			NULL						),
		('LEADER_GEDEMO_BISMARK_BUILDINGS',	'BUILDING_STABLE',						1,			NULL						),
		('LEADER_GEDEMO_BISMARK_BUILDINGS',	'BUILDING_ARMORY',					1,			NULL						),
		('LEADER_GEDEMO_BISMARK_BUILDINGS',	'BUILDING_MILITARY_ACADEMY',						1,			NULL						),
		('LEADER_GEDEMO_BISMARK_BUILDINGS',	'BUILDING_RUHR_VALLEY',					1,			NULL						),
		
		-- DISTRICTS
		('LEADER_GEDEMO_BISMARK_DISTRICTS',	'DISTRICT_ENCAMPMENT',						1,			NULL						),
		('LEADER_GEDEMO_BISMARK_DISTRICTS',	'DISTRICT_INDUSTRIAL_ZONE',						1,			NULL						);