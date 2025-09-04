--==========================================================================================================================
-- USER SETTINGS (THIS IS NEEDED IN MOST CASES)
--==========================================================================================================================
-- JFD_GlobalUserSettings
------------------------------------------------------------
CREATE TABLE IF NOT EXISTS 
JFD_GlobalUserSettings (
	Type 				text 			default null,
	Value 				integer 		default 1);
--==========================================================================================================================
-- DELIVERATOR MOAR UNITS (8342b98d-80c7-4002-87bb-419646bd9b54)
-- DELIVERATOR MOAR UNITS (CORE ONLY) (860265f1-73df-47d9-b5dc-c9cdc6b1489a)
--==========================================================================================================================
--==========================================================================================================================
-- GEDEMON YNAEMP (36e88483-48fe-4545-b85f-bafc50dde315)
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,							Leader,				MapName,			X,	Y)
VALUES	('CIVILIZATION_MER_PALMYRA',		'LEADER_MER_ZENOBIA',	'GiantEarth',		28,	56),
		('CIVILIZATION_MER_PALMYRA',		'LEADER_MER_ZENOBIA',	'GreatestEarthMap',	57,	42),
		('CIVILIZATION_MER_PALMYRA',		'LEADER_MER_ZENOBIA',	'PlayEuropeAgain',	59,	25),
		('CIVILIZATION_MER_PALMYRA',		'LEADER_MER_ZENOBIA',	'LargeEurope',		48,	26);

--==========================================================================================================================		
--==========================================================================================================================