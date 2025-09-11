--==========================================================================================================================
-- Districts
--==========================================================================================================================
-- Types
-----------------------------------------------------------------------------------
INSERT INTO Types
		(Type,									Kind)
VALUES	('DISTRICT_MER_KYIV_VECHE',			'KIND_DISTRICT');
-----------------------------------------------------------------------------------
-- Districts
-----------------------------------------------------------------------------------
INSERT INTO Districts
			(DistrictType,						Name,										Description,										TraitType,												Cost,		PrereqTech,		Aqueduct,		PlunderType,		PlunderAmount,		AdvisorType,		CostProgressionModel,		CostProgressionParam1,		RequiresPlacement,		RequiresPopulation,		NoAdjacentCity,		InternalOnly,		ZOC,		CaptureRemovesBuildings,		CaptureRemovesCityDefenses,		MilitaryDomain,		TravelTime,		CityStrengthModifier)
SELECT		'DISTRICT_MER_KYIV_VECHE',		'LOC_DISTRICT_MER_KYIV_VECHE_NAME',		'LOC_DISTRICT_MER_KYIV_VECHE_DESCRIPTION',		'TRAIT_CIVILIZATION_DISTRICT_MER_KYIV_VECHE',		Cost/2,		PrereqTech,		Aqueduct,		PlunderType,		PlunderAmount,		AdvisorType,		CostProgressionModel,		CostProgressionParam1,		RequiresPlacement,		RequiresPopulation,		NoAdjacentCity,		InternalOnly,		ZOC,		CaptureRemovesBuildings,		CaptureRemovesCityDefenses,		MilitaryDomain,		TravelTime,		CityStrengthModifier
FROM Districts WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';
-----------------------------------------------------------------------------------
-- DistrictReplaces
-----------------------------------------------------------------------------------
INSERT INTO DistrictReplaces
			(CivUniqueDistrictType,					ReplacesDistrictType)
VALUES		('DISTRICT_MER_KYIV_VECHE',			'DISTRICT_COMMERCIAL_HUB');
-----------------------------------------------------------------------------------
-- District_GreatPersonPoints
-----------------------------------------------------------------------------------
INSERT INTO District_GreatPersonPoints
			(DistrictType,							GreatPersonClassType,		PointsPerTurn)
SELECT 		'DISTRICT_MER_KYIV_VECHE',			GreatPersonClassType,		PointsPerTurn
FROM District_GreatPersonPoints WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';
-----------------------------------------------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------------------------------------------
INSERT INTO District_TradeRouteYields
			(DistrictType,							YieldType,	YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
SELECT 		'DISTRICT_MER_KYIV_VECHE',			YieldType,	YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination
FROM District_TradeRouteYields WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';
-----------------------------------------------------------------------------------
-- District_ValidTerrains
-----------------------------------------------------------------------------------
INSERT INTO District_ValidTerrains
			(DistrictType,							TerrainType)
SELECT 		'DISTRICT_MER_KYIV_VECHE',			TerrainType
FROM District_ValidTerrains WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';
-----------------------------------------------------------------------------------
-- District_Adjacencies
-----------------------------------------------------------------------------------
INSERT INTO District_Adjacencies
			(DistrictType,							YieldChangeId)
SELECT 		'DISTRICT_MER_KYIV_VECHE',			YieldChangeId
FROM District_Adjacencies WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';

INSERT INTO District_Adjacencies
		(DistrictType,						YieldChangeId)
VALUES	('DISTRICT_MER_KYIV_VECHE', 	'VicheResource'),
		('DISTRICT_MER_KYIV_VECHE', 	'VicheGov'),
		('DISTRICT_MER_KYIV_VECHE', 	'VicheDiplo');

INSERT INTO Adjacency_YieldChanges
		(ID,				Description,						YieldType,			YieldChange,	TilesRequired,	AdjacentResource	)
VALUES	('VicheResource', 	'LOC_VECHE_RESOURCE_ADJACENCY',	'YIELD_GOLD',		1,				2,						1	);
INSERT INTO Adjacency_YieldChanges
		(ID,				Description,						YieldType,			YieldChange,	TilesRequired,	AdjacentDistrict	)
VALUES	('VicheGov', 	'LOC_VECHE_RESOURCE_ADJACENCY',		'YIELD_GOLD',		1,				1,				'DISTRICT_GOVERNMENT'	),
		('VicheDiplo', 	'LOC_VECHE_RESOURCE_ADJACENCY',		'YIELD_GOLD',		1,				1,				'DISTRICT_DIPLOMATIC_QUARTER'	);
-----------------------------------------------------------------------------------
-- District_CitizenYieldChanges
-----------------------------------------------------------------------------------
INSERT INTO District_CitizenYieldChanges
			(DistrictType,							YieldType,		YieldChange)
SELECT 		'DISTRICT_MER_KYIV_VECHE',			YieldType,		YieldChange
FROM District_CitizenYieldChanges WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';
-----------------------------------------------------------------------------------
-- DistrictModifiers
-----------------------------------------------------------------------------------
INSERT INTO DistrictModifiers
			(DistrictType,							ModifierId)
SELECT 		'DISTRICT_MER_KYIV_VECHE',			ModifierId
FROM DistrictModifiers WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB';

INSERT INTO DistrictModifiers
		(DistrictType,						ModifierId)
VALUES	('DISTRICT_MER_KYIV_VECHE', 	'MER_KYIV_VECHE_CULTURE');
--==========================================================================================================================
-- Modifiers
--==========================================================================================================================
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType,															OwnerRequirementSetId,			SubjectRequirementSetId)
VALUES	('MER_KYIV_VECHE_CULTURE',					'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		null,						'MER_DISTRICT_IS_VECHE');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,						Value)
VALUES	('MER_KYIV_VECHE_CULTURE',					'YieldTypeToMirror',	'YIELD_GOLD'),
		('MER_KYIV_VECHE_CULTURE',					'YieldTypeToGrant',		'YIELD_CULTURE');
--==========================================================================================================================
-- Requirements
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('MER_DISTRICT_IS_VECHE',				'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('MER_DISTRICT_IS_VECHE',				'REQ_DISTRICT_IS_MER_VECHE');
--------------------------------------------------------------------------------------------------------------------------
-- Requirements
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Requirements 			
		(RequirementId,									RequirementType,												Inverse )
VALUES	('REQ_DISTRICT_IS_MER_VECHE',					'REQUIREMENT_DISTRICT_TYPE_MATCHES',							0	);
--------------------------------------------------------------------------------------------------------------------------
-- RequirementArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
            (RequirementId,								   Name,			 Value)
VALUES      ('REQ_DISTRICT_IS_MER_VECHE',				'DistrictType',		 'DISTRICT_MER_KYIV_VECHE');
--==========================================================================================================================
--==========================================================================================================================