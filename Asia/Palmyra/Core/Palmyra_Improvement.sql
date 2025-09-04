--==========================================================================================================================
-- IMPROVEMENTS
--==========================================================================================================================
	-- Types
	--------------------------------------------------------------------
		INSERT INTO Types
				(Type,							Kind)
		VALUES	('IMPROVEMENT_MER_FUNERARY_TOWERS',		'KIND_IMPROVEMENT');
	--------------------------------------------------------------------
	-- Improvements
	--------------------------------------------------------------------
		INSERT INTO Improvements
				(
					ImprovementType,
					Name,
					Description,
					Icon,
					Appeal,
					-----------------
					-- Building Info
					-----------------
					Buildable,
					TraitType,
					PrereqTech,
					-----------------
					-- Plunder Info
					-----------------
					PlunderType,
					PlunderAmount
				)
		VALUES
				(
					'IMPROVEMENT_MER_FUNERARY_TOWERS',
					'LOC_IMPROVEMENT_MER_FUNERARY_TOWERS_NAME',
					'LOC_IMPROVEMENT_MER_FUNERARY_TOWERS_DESCRIPTION',
					'ICON_IMPROVEMENT_MER_FUNERARY_TOWERS',
					2,
					-----------------
					-- Building Info
					-----------------
					1,
					'TRAIT_CIVILIZATION_IMPROVEMENT_MER_FUNERARY_TOWERS',
					"TECH_MASONRY",
					-----------------
					-- Plunder Info
					-----------------
					'PLUNDER_CULTURE',
					25
					);
	--------------------------------------------------------------------
	-- Improvement_ValidTerrains
	--------------------------------------------------------------------
		INSERT INTO Improvement_ValidTerrains
					(ImprovementType,							TerrainType)
		VALUES 		('IMPROVEMENT_MER_FUNERARY_TOWERS',					'TERRAIN_DESERT'),
					('IMPROVEMENT_MER_FUNERARY_TOWERS',					'TERRAIN_DESERT_HILLS');

	--------------------------------------------------------------------
	-- Improvement_ValidBuildUnits
	--------------------------------------------------------------------
		INSERT INTO Improvement_ValidBuildUnits
					(ImprovementType,							UnitType)
		VALUES 		('IMPROVEMENT_MER_FUNERARY_TOWERS',				'UNIT_BUILDER');
	--------------------------------------------------------------------
	-- Improvement_YieldChanges
	--------------------------------------------------------------------
		INSERT INTO Improvement_YieldChanges
				(ImprovementType,				YieldType,						YieldChange)
		VALUES	('IMPROVEMENT_MER_FUNERARY_TOWERS',		'YIELD_CULTURE',			1),
				('IMPROVEMENT_MER_FUNERARY_TOWERS',		'YIELD_FAITH',				1);
	--------------------------------------------------------------------
	-- Improvement_Adjacencies
	--------------------------------------------------------------------
		INSERT INTO Improvement_Adjacencies
				(ImprovementType,							YieldChangeId)
		VALUES	('IMPROVEMENT_MER_FUNERARY_TOWERS',			'FuneraryFaith'),
				('IMPROVEMENT_MER_FUNERARY_TOWERS',			'FuneraryCulture'),
				('IMPROVEMENT_MER_FUNERARY_TOWERS',			'FuneraryTheater'),
				('IMPROVEMENT_MER_FUNERARY_TOWERS',			'FuneraryHoly');
	--------------------------------------------------------------------
	-- Adjacency_YieldChanges
	--------------------------------------------------------------------
		INSERT INTO Adjacency_YieldChanges
				(ID,								Description,	YieldType,				YieldChange,	TilesRequired,	AdjacentImprovement,				AdjacentDistrict)
		VALUES	('FuneraryFaith',					'Placeholder',	'YIELD_FAITH',			1,				2,				'IMPROVEMENT_MER_FUNERARY_TOWERS',		null),
				('FuneraryCulture',					'Placeholder',	'YIELD_CULTURE',			1,				2,				'IMPROVEMENT_MER_FUNERARY_TOWERS',	null),
				('FuneraryTheater',					'Placeholder',	'YIELD_CULTURE',			1,				1,			null,									'DISTRICT_THEATER'),
				('FuneraryHoly',					'Placeholder',	'YIELD_FAITH',			1,				1,				null,									'DISTRICT_HOLY_SITE');

	--------------------------------------------------------------------
	-- Improvement_Tourism
	--------------------------------------------------------------------
		INSERT INTO Improvement_Tourism
				(ImprovementType,					TourismSource,				PrereqCivic,					ScalingFactor)
		VALUES	('IMPROVEMENT_MER_FUNERARY_TOWERS',	'TOURISMSOURCE_CULTURE',		'CIVIC_CONSERVATION',		100);
