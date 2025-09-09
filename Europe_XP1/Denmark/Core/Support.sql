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
		(Civilization,						Leader,						MapName,				X,	Y)
VALUES	('CIVILIZATION_MER_DENMARK',		'LEADER_MER_CHRISTIAN_IV',	'FiraxisTSL',			41, 48),
		('CIVILIZATION_MER_DENMARK',		'LEADER_MER_CHRISTIAN_IV',	'FiraxisTSL_Europe',	36,	30),
		('CIVILIZATION_MER_DENMARK',		'LEADER_MER_CHRISTIAN_IV',	'GiantEarth',			20,	75),
		('CIVILIZATION_MER_DENMARK',		'LEADER_MER_CHRISTIAN_IV',	'GreatestEarthMap'	,	49,	58),
		('CIVILIZATION_MER_DENMARK',		'LEADER_MER_CHRISTIAN_IV',	'PlayEuropeAgain',		47,	64),
		('CIVILIZATION_MER_DENMARK',		'LEADER_MER_CHRISTIAN_IV',	'LargestEarthCustom',	28,	94),
		('CIVILIZATION_MER_DENMARK',		'LEADER_MER_CHRISTIAN_IV',	'LargeEurope',			37,	55);
