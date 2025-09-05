

--==========================================================================================================================
-- Historical Religions
--==========================================================================================================================
-- FavoredReligions 
------------------------------------------------------------

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GEDEMO_BISMARK';

INSERT OR REPLACE INTO FavoredReligions
           (LeaderType,                                       ReligionType)
SELECT   ('LEADER_GEDEMO_BISMARK'),                             ('RELIGION_PROTESTANTISM')
WHERE NOT EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_PROTESTANTISM');

INSERT OR REPLACE INTO FavoredReligions
           (LeaderType,                                       ReligionType)
SELECT   ('LEADER_GEDEMO_BISMARK'),                             ('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_PROTESTANTISM');



--==========================================================================================================================
-- GEDEMON YNAEMP
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,						Leader,						MapName,			X,	Y)
VALUES	('CIVILIZATION_GERMANY',	'LEADER_GEDEMO_BISMARK',	'GiantEarth',		21,	71),
		('CIVILIZATION_GERMANY',	'LEADER_GEDEMO_BISMARK',	'GreatestEarthMap', 51,	53),
		('CIVILIZATION_GERMANY',	'LEADER_GEDEMO_BISMARK',	'LargestEarthCustom', 28,	88),
		('CIVILIZATION_GERMANY',	'LEADER_GEDEMO_BISMARK',	'LargeEurope', 39,	48),
		('CIVILIZATION_GERMANY',	'LEADER_GEDEMO_BISMARK',	'PlayEuropeAgain', 47,	56),
		('CIVILIZATION_GERMANY',	'LEADER_GEDEMO_BISMARK',	'Zobtzler_NorthernEurope_Map', 37,	6),
		('CIVILIZATION_GERMANY',  'LEADER_GEDEMO_BISMARK',  'CordiformEarth',  40, 32);


