--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('LEADER_GEDEMO_CATHERINE2',	'KIND_LEADER');
		

--------------------------------------------------------------------------------------------------------------------------
-- Leaders
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,										InheritFrom,		SceneLayers)
VALUES	('LEADER_GEDEMO_CATHERINE2',	'LOC_LEADER_GEDEMO_CATHERINE2',		'LEADER_DEFAULT',	4);	
--------------------------------------------------------------------------------------------------------------------------
-- LeaderQuotes
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,			Quote)
VALUES	('LEADER_GEDEMO_CATHERINE2',	'LOC_PEDIA_LEADERS_PAGE_LEADER_GEDEMO_CATHERINE2_QUOTE');	

--==========================================================================================================================
-- LEADER: AGENDAS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('TRAIT_AGENDA_GEDEMO_CATHERINE2',		'KIND_TRAIT');
--------------------------------------------------------------------------------------------------------------------------
-- Agendas
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Agendas
		(AgendaType,								Name,										Description)
VALUES	('AGENDA_GEDEMO_CATHERINE2',				'LOC_AGENDA_GEDEMO_CATHERINE2_NAME',		'LOC_AGENDA_GEDEMO_CATHERINE2_DESCRIPTION');
--------------------------------------------------------------------------------------------------------------------------
-- Traits
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Traits
		(TraitType,									Name,										Description)
VALUES	('TRAIT_AGENDA_GEDEMO_CATHERINE2',		'LOC_PLACEHOLDER',							'LOC_PLACEHOLDER');
--------------------------------------------------------------------------------------------------------------------------
-- AgendaTraits
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO AgendaTraits
		(AgendaType,								TraitType)
VALUES	('AGENDA_GEDEMO_CATHERINE2',				'TRAIT_AGENDA_OPTIMUS_PRINCEPS');
--------------------------------------------------------------------------------------------------------------------------
-- ExclusiveAgendas
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ExclusiveAgendas
		(AgendaOne,									AgendaTwo)
VALUES	('AGENDA_GEDEMO_CATHERINE2',				'AGENDA_DARWINIST');

--------------------------------------------------------------------------------------------------------------------------
-- HistoricalAgendas
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType)
VALUES	('LEADER_GEDEMO_CATHERINE2',	'AGENDA_GEDEMO_CATHERINE2');

--------------------------------------------------------------------------------------------------------------------------
-- AgendaPreferredLeaders
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AgendaPreferredLeaders	
		(LeaderType,					AgendaType)
VALUES	('LEADER_GEDEMO_CATHERINE2',	'AGENDA_STANDING_ARMY');	




--==========================================================================================================================
-- LEADERS: LOADING INFO
--==========================================================================================================================
-- LoadingInfo
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,						BackgroundImage, 						ForegroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_GEDEMO_CATHERINE2',		'LEADER_NEUTRAL_BACKGROUND',		'LEADER_CATHERINE2_NEUTRAL',			0);	
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
VALUES	('CIVILIZATION_RUSSIA',	'LEADER_GEDEMO_CATHERINE2',	'LOC_CITY_NAME_ST_PETERSBURG');	
----------------------------------------------------------------------------------------------------------------------------			

----------------------------------------------------------------------------------------------------------------------------			
-------------------------------------
-- CityNames
-------------------------------------
INSERT INTO CityNames	
			(CivilizationType,				LeaderType,					SortIndex,	CityName)	
VALUES		('CIVILIZATION_RUSSIA',		'LEADER_GEDEMO_CATHERINE2',		-1,			'LOC_CITY_NAME_ST_PETERSBURG');	
			
--------------------------------------------------------------------------------------------------------------------------		
-- BackGround Art		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO DiplomacyInfo			
		(Type,								BackgroundImage)
VALUES	('LEADER_GEDEMO_CATHERINE2',		'ART_LEADER_CATHERINE2.dds');

--------------------------------------------------------------------------------------------------------------------------	
-- Types
--------------------------------------------------------------------------------------------------------------------------	

INSERT INTO Types	
		(Type,														Kind)
VALUES	('TRAIT_LEADER_GEDEMO_CATHERINE2',						'KIND_TRAIT'),
		('GEDEMO_MODIFIER_CATHERINE_ROADS', 'KIND_MODIFIER'),
		('GEDEMO_MODIFIER_CATHERINE_COPY', 'KIND_MODIFIER');
--------------------------------------------------------------------------------------------------------------------------			
-- Traits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,													Name,													Description)
VALUES	('TRAIT_LEADER_GEDEMO_CATHERINE2',						'LOC_TRAIT_LEADER_GEDEMO_CATHERINE2_NAME',			'LOC_TRAIT_LEADER_GEDEMO_CATHERINE2_DESCRIPTION');	

--------------------------------------------------------------------------------------------------------------------------
-- LeaderTraits
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,			TraitType)
VALUES	('LEADER_GEDEMO_CATHERINE2',	'TRAIT_LEADER_GEDEMO_CATHERINE2');
		


-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,									ModifierId		)	
VALUES	('TRAIT_LEADER_GEDEMO_CATHERINE2',	'GEDEMO_CATHERINE_ROAD_SNOW'),
		('TRAIT_LEADER_GEDEMO_CATHERINE2',	'GEDEMO_CATHERINE_ROAD_TUNDRA'),
		('TRAIT_LEADER_GEDEMO_CATHERINE2',	'GEDEMO_CATHERINE_ROAD_SNOW_HILLS'),
		('TRAIT_LEADER_GEDEMO_CATHERINE2',	'GEDEMO_CATHERINE_ROAD_TUNDRA_HILLS'),
		('TRAIT_LEADER_GEDEMO_CATHERINE2',	'GEDEMO_CATHERINE_ROAD_SNOW_MOUNTAIN'),
		('TRAIT_LEADER_GEDEMO_CATHERINE2',	'GEDEMO_CATHERINE_ROAD_TUNDRA_MOUNTAIN'),
		('TRAIT_LEADER_GEDEMO_CATHERINE2',	'GEDEMO_CATHERINE_FREECOPY'),
		('TRAIT_LEADER_GEDEMO_CATHERINE2',	'GEDEMO_CATHERINE_FREECOPYHORSES'),
		('TRAIT_LEADER_GEDEMO_CATHERINE2',	'GEDEMO_CATHERINE_FREECOPYURANIUM'),
		('TRAIT_LEADER_GEDEMO_CATHERINE2',	'GEDEMO_STRATEGIC_RESOURCE_PRODUCTION');

INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType)
	VALUES
		('GEDEMO_MODIFIER_CATHERINE_ROADS', 'COLLECTION_PLAYER_BUILT_CITIES', 'EFFECT_GRANT_CITY_ROAD_TO_CAPITAL'),
		('GEDEMO_MODIFIER_CATHERINE_COPY', 'COLLECTION_PLAYER_CITIES', 'EFFECT_ADJUST_CITY_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE');


-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,	SubjectStackLimit, OwnerStackLimit,	RunOnce, Permanent,					ModifierType,	SubjectRequirementSetId	)
VALUES	('GEDEMO_CATHERINE_ROAD_SNOW', 0,0,	0,0,'GEDEMO_MODIFIER_CATHERINE_ROADS', 'REQ_CATHERINE_SNOW'),
		('GEDEMO_CATHERINE_ROAD_TUNDRA', 0,0,0,0,	'GEDEMO_MODIFIER_CATHERINE_ROADS', 'REQ_CATHERINE_TUNDRA'),
		('GEDEMO_CATHERINE_ROAD_SNOW_HILLS', 0,0,0,0,	'GEDEMO_MODIFIER_CATHERINE_ROADS', 'REQ_CATHERINE_SNOW_HILLS'),
		('GEDEMO_CATHERINE_ROAD_SNOW_MOUNTAIN', 0,0,0,0,	'GEDEMO_MODIFIER_CATHERINE_ROADS', 'REQ_CATHERINE_SNOW_MOUNTAIN'),
		('GEDEMO_CATHERINE_ROAD_TUNDRA_HILLS', 0,0,	0,0,'GEDEMO_MODIFIER_CATHERINE_ROADS', 'REQ_CATHERINE_TUNDRA_HILLS'),
		('GEDEMO_CATHERINE_ROAD_TUNDRA_MOUNTAIN', 0,0,0,0,	'GEDEMO_MODIFIER_CATHERINE_ROADS', 'REQ_CATHERINE_TUNDRA_MOUNTAIN'),
		('GEDEMO_CATHERINE_FREECOPY', 0,0, 0, 0,	'GEDEMO_MODIFIER_CATHERINE_COPY', NULL),
		('GEDEMO_CATHERINE_FREECOPYHORSES', 0,0, 0, 0,	'GEDEMO_MODIFIER_CATHERINE_COPY', NULL),
		('GEDEMO_CATHERINE_FREECOPYURANIUM', 0,0, 0, 0,	'GEDEMO_MODIFIER_CATHERINE_COPY', NULL),
		('GEDEMO_STRATEGIC_RESOURCE_PRODUCTION', 0,0,0,0,	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'CATHERINEPLOT_HAS_STRATEGIC');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,												Name,		Value	)
VALUES	('GEDEMO_CATHERINE_ROAD_SNOW',		'Amount',	1		),
		('GEDEMO_CATHERINE_ROAD_SNOW_HILLS',		'Amount',	1		),
		('GEDEMO_CATHERINE_ROAD_SNOW_MOUNTAIN',		'Amount',	1		),
		('GEDEMO_CATHERINE_ROAD_TUNDRA',		'Amount',	1		),
		('GEDEMO_CATHERINE_ROAD_TUNDRA_HILLS',		'Amount',	1		),
		('GEDEMO_CATHERINE_ROAD_TUNDRA_MOUNTAIN',		'Amount',	1		),

		('GEDEMO_CATHERINE_FREECOPY',		'Amount',	2		),
		('GEDEMO_CATHERINE_FREECOPY',		'ResourceType',	'RESOURCE_IRON'),

		('GEDEMO_CATHERINE_FREECOPYHORSES',		'Amount',	2		),
		('GEDEMO_CATHERINE_FREECOPYHORSES',		'ResourceType',	'RESOURCE_HORSES'),

		('GEDEMO_CATHERINE_FREECOPYURANIUM',		'Amount',	2		),
		('GEDEMO_CATHERINE_FREECOPYURANIUM',		'ResourceType',	'RESOURCE_URANIUM'),

		('GEDEMO_STRATEGIC_RESOURCE_PRODUCTION',		'YieldType',	'YIELD_PRODUCTION'		),
		('GEDEMO_STRATEGIC_RESOURCE_PRODUCTION',		'Amount',	1		);


-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	
		('CATHERINEPLOT_HAS_STRATEGIC',							'REQUIREMENTSET_TEST_ALL'),
		
		('REQ_CATHERINE_SNOW',			'REQUIREMENTSET_TEST_ALL'),
		('REQ_CATHERINE_SNOW_HILLS',			'REQUIREMENTSET_TEST_ALL'),
		('REQ_CATHERINE_SNOW_MOUNTAIN',			'REQUIREMENTSET_TEST_ALL'),
		('REQ_CATHERINE_TUNDRA',			'REQUIREMENTSET_TEST_ALL'),
		('REQ_CATHERINE_TUNDRA_HILLS',			'REQUIREMENTSET_TEST_ALL'),
		('REQ_CATHERINE_TUNDRA_MOUNTAIN',			'REQUIREMENTSET_TEST_ALL');

-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	
		('CATHERINEPLOT_HAS_STRATEGIC',							'REQUIRES_PLOT_HAS_STRATEGIC'),
		
		('REQ_CATHERINE_SNOW',			'GEDEMO_CATHERINE_ADJACENT_SNOW'),
		('REQ_CATHERINE_SNOW_HILLS',			'GEDEMO_CATHERINE_ADJACENT_SNOW_HILLS'),
		('REQ_CATHERINE_SNOW_MOUNTAIN',			'GEDEMO_CATHERINE_ADJACENT_SNOW_MOUNTAIN'),
		('REQ_CATHERINE_TUNDRA',			'GEDEMO_CATHERINE_ADJACENT_TUNDRA'),
		('REQ_CATHERINE_TUNDRA_HILLS',			'GEDEMO_CATHERINE_ADJACENT_TUNDRA_HILLS'),
		('REQ_CATHERINE_TUNDRA_MOUNTAIN',			'GEDEMO_CATHERINE_ADJACENT_TUNDRA_MOUNTAIN');

-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId,								RequirementType)
VALUES	('GEDEMO_CATHERINE_ADJACENT_SNOW',				'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('GEDEMO_CATHERINE_ADJACENT_SNOW_HILLS',				'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('GEDEMO_CATHERINE_ADJACENT_SNOW_MOUNTAIN',				'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('GEDEMO_CATHERINE_ADJACENT_TUNDRA',				'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('GEDEMO_CATHERINE_ADJACENT_TUNDRA_HILLS',				'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('GEDEMO_CATHERINE_ADJACENT_TUNDRA_MOUNTAIN',				'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES');

-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,								Name, Value)
VALUES	
	('GEDEMO_CATHERINE_ADJACENT_SNOW',	'TerrainType', 'TERRAIN_SNOW'),
	('GEDEMO_CATHERINE_ADJACENT_SNOW',	'MinRange', 1),
	('GEDEMO_CATHERINE_ADJACENT_SNOW',	'MaxRange', 1),

	('GEDEMO_CATHERINE_ADJACENT_SNOW_HILLS',	'TerrainType', 'TERRAIN_SNOW_HILLS'),
	('GEDEMO_CATHERINE_ADJACENT_SNOW_HILLS',	'MinRange', 1),
	('GEDEMO_CATHERINE_ADJACENT_SNOW_HILLS',	'MaxRange', 1),

	('GEDEMO_CATHERINE_ADJACENT_SNOW_MOUNTAIN',	'TerrainType', 'TERRAIN_SNOW_MOUNTAIN'),
	('GEDEMO_CATHERINE_ADJACENT_SNOW_MOUNTAIN',	'MinRange', 1),
	('GEDEMO_CATHERINE_ADJACENT_SNOW_MOUNTAIN',	'MaxRange', 1),

	('GEDEMO_CATHERINE_ADJACENT_TUNDRA',	'TerrainType', 'TERRAIN_TUNDRA'),
	('GEDEMO_CATHERINE_ADJACENT_TUNDRA',	'MinRange', 1),
	('GEDEMO_CATHERINE_ADJACENT_TUNDRA',	'MaxRange', 1),

	('GEDEMO_CATHERINE_ADJACENT_TUNDRA_HILLS',	'TerrainType', 'TERRAIN_TUNDRA_HILLS'),
	('GEDEMO_CATHERINE_ADJACENT_TUNDRA_HILLS',	'MinRange', 1),
	('GEDEMO_CATHERINE_ADJACENT_TUNDRA_HILLS',	'MaxRange', 1),

	('GEDEMO_CATHERINE_ADJACENT_TUNDRA_MOUNTAIN',	'TerrainType', 'TERRAIN_TUNDRA_MOUNTAIN'),
	('GEDEMO_CATHERINE_ADJACENT_TUNDRA_MOUNTAIN',	'MinRange', 1),
	('GEDEMO_CATHERINE_ADJACENT_TUNDRA_MOUNTAIN',	'MaxRange', 1);



-----------------------------------------------
-- AiListTypes
-----------------------------------------------

INSERT INTO AiListTypes
		(ListType										)
VALUES 	('LEADER_GEDEMO_CATHERINE2_TECHS'			),
		('LEADER_GEDEMO_CATHERINE2_CIVICS'		),
		('LEADER_GEDEMO_CATHERINE2_DISTRICTS'		),
		('LEADER_GEDEMO_CATHERINE2_BUILDINGS'		),
		('LEADER_GEDEMO_CATHERINE2_DIPLOMACY'		),
		('LEADER_GEDEMO_CATHERINE2_EXPANSION'		),
		('LEADER_GEDEMO_CATHERINE2_PSEUDOS'		);

-----------------------------------------------
-- AiLists
-----------------------------------------------

INSERT INTO AiLists
		(ListType,										LeaderType,								System						)
VALUES  ('LEADER_GEDEMO_CATHERINE2_TECHS',		'TRAIT_LEADER_GEDEMO_CATHERINE2',	'Technologies'				),
		('LEADER_GEDEMO_CATHERINE2_CIVICS',		'TRAIT_LEADER_GEDEMO_CATHERINE2',	'Civics'					),
		('LEADER_GEDEMO_CATHERINE2_DISTRICTS',	'TRAIT_LEADER_GEDEMO_CATHERINE2',	'Districts'					),
		('LEADER_GEDEMO_CATHERINE2_BUILDINGS',	'TRAIT_LEADER_GEDEMO_CATHERINE2',	'Buildings'					);
		
		
-----------------------------------------------
-- AiFavoredItems
-----------------------------------------------

INSERT INTO AiFavoredItems
		(ListType,										Item,										Favored,	StringVal		)
VALUES  -- TECHS
		('LEADER_GEDEMO_CATHERINE2_TECHS',		'TECH_MINING',								1,			NULL						),
		('LEADER_GEDEMO_CATHERINE2_TECHS',		'TECH_THE_WHEEL',						1,			NULL						),
		('LEADER_GEDEMO_CATHERINE2_TECHS',		'TECH_HORSEBACK_RIDING',						1,			NULL						),
		('LEADER_GEDEMO_CATHERINE2_TECHS',		'TECH_IRON_WORKING',							1,			NULL						),
		
		-- CIVICS
		('LEADER_GEDEMO_CATHERINE2_CIVICS',		'CIVIC_EARLY_EMPIRE',					1,			NULL						),
		
		
		
		-- WONDERS
		('LEADER_GEDEMO_CATHERINE2_BUILDINGS',	'BUILDING_HERMITAGE',							1,			NULL						),
		('LEADER_GEDEMO_CATHERINE2_BUILDINGS',	'BUILDING_BOLSHOI_THEATRE',						1,			NULL						),
		
		
		-- DISTRICTS
		('LEADER_GEDEMO_CATHERINE2_DISTRICTS',	'DISTRICT_ENCAMPMENT',						1,			NULL						),
		('LEADER_GEDEMO_CATHERINE2_DISTRICTS',	'DISTRICT_LAVRA',						1,			NULL						);