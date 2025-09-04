--==========================================================================================================================
											-- NAMED PLACES --
--==========================================================================================================================
-- Types
--------------------------------------------------------------------
INSERT OR REPLACE INTO Types
		(Type,							Kind)
VALUES	("NAMED_DESERT_MER_SYRIAN",		"KIND_NAMED_DESERT");
--------------------------------------------------------------------
-- NamedDeserts
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedDeserts
		(NamedDesertType,				Name)
VALUES	("NAMED_DESERT_MER_SYRIAN",		"LOC_NAMED_DESERT_MER_SYRIAN_NAME");
--------------------------------------------------------------------
-- NamedRiverCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedRiverCivilizations
		(NamedRiverType,				CivilizationType)
VALUES	("NAMED_RIVER_EUPHRATES",		"CIVILIZATION_MER_PALMYRA"),
		("NAMED_RIVER_BARADA_RIVER",	"CIVILIZATION_MER_PALMYRA"),
		("NAMED_RIVER_TIGRIS",			"CIVILIZATION_MER_PALMYRA");
--------------------------------------------------------------------
-- NamedMountainCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedMountainCivilizations
		(NamedMountainType,						CivilizationType)
VALUES	("NAMED_MOUNTAIN_TAURUS",				"CIVILIZATION_MER_PALMYRA"),
		("NAMED_MOUNTAIN_ALADAGH_MOUNTAINS",	"CIVILIZATION_MER_PALMYRA"),
		("NAMED_MOUNTAIN_ALBORZ",				"CIVILIZATION_MER_PALMYRA"),
		("NAMED_MOUNTAIN_LEBANON",				"CIVILIZATION_MER_PALMYRA");
--------------------------------------------------------------------
-- NamedVolcanoCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedVolcanoCivilizations
		(NamedVolcanoType,					CivilizationType)
VALUES	("NAMED_VOLCANO_HARRAT_KHAYBAR",	"CIVILIZATION_MER_PALMYRA"),
		("NAMED_VOLCANO_DAMAVAND",			"CIVILIZATION_MER_PALMYRA"),
		("NAMED_VOLCANO_MOUNT_SABALAN",		"CIVILIZATION_MER_PALMYRA"),
		("NAMED_VOLCANO_SAHAND",			"CIVILIZATION_MER_PALMYRA");
--------------------------------------------------------------------
-- NamedDesertCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedDesertCivilizations
		(NamedDesertType,					CivilizationType)
VALUES	("NAMED_DESERT_ARABIAN",			"CIVILIZATION_MER_PALMYRA"),
		("NAMED_DESERT_MER_SYRIAN",			"CIVILIZATION_MER_PALMYRA"),
		("NAMED_DESERT_HAMAD",				"CIVILIZATION_MER_PALMYRA"),
		("NAMED_DESERT_GREAT_SAND_SEA",		"CIVILIZATION_MER_PALMYRA"),
		("NAMED_DESERT_LIBYAN",				"CIVILIZATION_MER_PALMYRA");
--------------------------------------------------------------------
-- NamedLakeCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedLakeCivilizations
		(NamedLakeType,						CivilizationType)
VALUES	("NAMED_LAKE_BAKHTEGAN_LAKE",		"CIVILIZATION_MER_PALMYRA"),
		("NAMED_LAKE_GREAT_BITTER_LAKE",	"CIVILIZATION_MER_PALMYRA"),
		("NAMED_LAKE_LAKE_HABBANIYAH",		"CIVILIZATION_MER_PALMYRA"),
		("NAMED_LAKE_MAHARLOO_LAKE",		"CIVILIZATION_MER_PALMYRA");
--------------------------------------------------------------------
-- NamedSeaCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedSeaCivilizations
		(NamedSeaType,						CivilizationType)
VALUES	("NAMED_SEA_PERSIAN_GULF",			"CIVILIZATION_MER_PALMYRA"),
		("NAMED_SEA_LEVANTINE_SEA",			"CIVILIZATION_MER_PALMYRA"),
		("NAMED_SEA_MEDITERRANEAN_SEA",		"CIVILIZATION_MER_PALMYRA"),
		("NAMED_SEA_GULF_OF_AQABA",			"CIVILIZATION_MER_PALMYRA"),
		("NAMED_SEA_LIBYAN_SEA",			"CIVILIZATION_MER_PALMYRA");
--==========================================================================================================================
--==========================================================================================================================
