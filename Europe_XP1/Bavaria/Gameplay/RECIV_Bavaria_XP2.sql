-- RECIV_Bavaria_XP2
-- Author: JNR
--------------------------------------------------------------

-- Units_XP2
--------------------------------------------------------------
INSERT OR IGNORE INTO Units_XP2
		(UnitType,	ResourceCost)
SELECT	UnitType,	10
FROM	Units
WHERE	UnitType='UNIT_JNR_BAVARIAN_PAPPENHEIMER';
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,						Kind)
VALUES	('NAMED_RIVER_MAIN',		'KIND_NAMED_RIVER'),
		('NAMED_RIVER_ISAR',		'KIND_NAMED_RIVER'),
		('NAMED_RIVER_INN',			'KIND_NAMED_RIVER'),
		('NAMED_RIVER_ILLER',		'KIND_NAMED_RIVER'),
		('NAMED_RIVER_LECH',		'KIND_NAMED_RIVER'),
		('NAMED_RIVER_ALTMUEHL',	'KIND_NAMED_RIVER'),
		('NAMED_RIVER_WERTACH',		'KIND_NAMED_RIVER');
--------------------------------------------------------------

-- NamedRivers
--------------------------------------------------------------
INSERT OR IGNORE INTO NamedRivers
		(NamedRiverType,			Name)
VALUES	('NAMED_RIVER_MAIN',		'LOC_NAMED_RIVER_MAIN_NAME'),
		('NAMED_RIVER_ISAR',		'LOC_NAMED_RIVER_ISAR_NAME'),
		('NAMED_RIVER_INN',			'LOC_NAMED_RIVER_INN_NAME'),
		('NAMED_RIVER_ILLER',		'LOC_NAMED_RIVER_ILLER_NAME'),
		('NAMED_RIVER_LECH',		'LOC_NAMED_RIVER_LECH_NAME'),
		('NAMED_RIVER_ALTMUEHL',	'LOC_NAMED_RIVER_ALTMUEHL_NAME'),
		('NAMED_RIVER_WERTACH',		'LOC_NAMED_RIVER_WERTACH_NAME');
--------------------------------------------------------------

-- NamedRiverCivilizations
--------------------------------------------------------------
INSERT OR IGNORE INTO NamedRiverCivilizations
		(NamedRiverType,			CivilizationType)
VALUES	('NAMED_RIVER_MAIN',		'CIVILIZATION_GERMANY'),
		('NAMED_RIVER_MAIN',		'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_RIVER_ISAR',		'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_RIVER_INN',			'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_RIVER_ILLER',		'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_RIVER_LECH',		'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_RIVER_ALTMUEHL',	'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_RIVER_WERTACH',		'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_RIVER_DANUBE',		'CIVILIZATION_JNR_BAVARIA');
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,							Kind)
VALUES	('NAMED_VOLCANO_PARKSTEIN',		'KIND_NAMED_VOLCANO'),
		('NAMED_VOLCANO_LINDENSTUMPF',	'KIND_NAMED_VOLCANO'),
		('NAMED_VOLCANO_RAUHER_KULM',	'KIND_NAMED_VOLCANO');
--------------------------------------------------------------

-- NamedVolcanoes
--------------------------------------------------------------
INSERT OR IGNORE INTO NamedVolcanoes
		(NamedVolcanoType,				Name)
VALUES	('NAMED_VOLCANO_PARKSTEIN',		'LOC_NAMED_VOLCANO_PARKSTEIN_NAME'),
		('NAMED_VOLCANO_LINDENSTUMPF',	'LOC_NAMED_VOLCANO_LINDENSTUMPF_NAME'),
		('NAMED_VOLCANO_RAUHER_KULM',	'LOC_NAMED_VOLCANO_RAUHER_KULM_NAME');
--------------------------------------------------------------

-- NamedVolcanoCivilizations
--------------------------------------------------------------
INSERT OR IGNORE INTO NamedVolcanoCivilizations
		(NamedVolcanoType,				CivilizationType)
VALUES	('NAMED_VOLCANO_PARKSTEIN',		'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_VOLCANO_LINDENSTUMPF',	'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_VOLCANO_RAUHER_KULM',	'CIVILIZATION_JNR_BAVARIA');
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,										Kind)
VALUES	('NAMED_MOUNTAIN_BAVARIAN_FOREST',			'KIND_NAMED_MOUNTAIN'),
		('NAMED_MOUNTAIN_UPPER_PALATINE_FOREST',	'KIND_NAMED_MOUNTAIN'),
		('NAMED_MOUNTAIN_FICHTEL_MOUNTAINS',		'KIND_NAMED_MOUNTAIN'),
		('NAMED_MOUNTAIN_FRANCONIAN_JURA',			'KIND_NAMED_MOUNTAIN');
--------------------------------------------------------------

-- NamedMountains
--------------------------------------------------------------
INSERT OR IGNORE INTO NamedMountains
		(NamedMountainType,							Name)
VALUES	('NAMED_MOUNTAIN_BAVARIAN_FOREST',			'LOC_NAMED_MOUNTAIN_BAVARIAN_FOREST_NAME'),
		('NAMED_MOUNTAIN_UPPER_PALATINE_FOREST',	'LOC_NAMED_MOUNTAIN_UPPER_PALATINE_FOREST_NAME'),
		('NAMED_MOUNTAIN_FICHTEL_MOUNTAINS',		'LOC_NAMED_MOUNTAIN_FICHTEL_MOUNTAINS_NAME'),
		('NAMED_MOUNTAIN_FRANCONIAN_JURA',			'LOC_NAMED_MOUNTAIN_FRANCONIAN_JURA_NAME');
--------------------------------------------------------------

-- NamedMountainCivilizations
--------------------------------------------------------------
INSERT OR IGNORE INTO NamedMountainCivilizations
		(NamedMountainType,							CivilizationType)
VALUES	('NAMED_MOUNTAIN_ALPS',						'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_MOUNTAIN_BAVARIAN_FOREST',			'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_MOUNTAIN_UPPER_PALATINE_FOREST',	'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_MOUNTAIN_FICHTEL_MOUNTAINS',		'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_MOUNTAIN_FRANCONIAN_JURA',			'CIVILIZATION_JNR_BAVARIA');
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,							Kind)
VALUES	('NAMED_LAKE_TEGERNSEE',		'KIND_NAMED_LAKE'),
		('NAMED_LAKE_STAFFELSEE',		'KIND_NAMED_LAKE');
--------------------------------------------------------------

-- NamedLakes
--------------------------------------------------------------
INSERT OR IGNORE INTO NamedLakes
		(NamedLakeType,					Name)
VALUES	('NAMED_LAKE_TEGERNSEE',		'LOC_NAMED_LAKE_TEGERNSEE_NAME'),
		('NAMED_LAKE_STAFFELSEE',		'LOC_NAMED_LAKE_STAFFELSEE_NAME');
--------------------------------------------------------------

-- NamedLakeCivilizations
--------------------------------------------------------------
INSERT OR IGNORE INTO NamedLakeCivilizations
		(NamedLakeType,					CivilizationType)
VALUES	('NAMED_LAKE_KONIGSSEE',		'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_LAKE_LAKE_AMMER',		'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_LAKE_LAKE_CHIEMSEE',	'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_LAKE_LAKE_CONSTANCE',	'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_LAKE_LAKE_STARNBERG',	'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_LAKE_LAKE_WALCHEN',		'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_LAKE_TEGERNSEE',		'CIVILIZATION_JNR_BAVARIA'),
		('NAMED_LAKE_STAFFELSEE',		'CIVILIZATION_JNR_BAVARIA');
--------------------------------------------------------------