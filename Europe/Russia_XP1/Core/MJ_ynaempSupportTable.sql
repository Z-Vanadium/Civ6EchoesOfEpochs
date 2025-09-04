

--==========================================================================================================================
-- Historical Religions
--==========================================================================================================================
-- FavoredReligions 
------------------------------------------------------------

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GEDEMO_CATHERINE2';

INSERT OR REPLACE INTO FavoredReligions
           (LeaderType,                                       ReligionType)
SELECT   ('LEADER_GEDEMO_CATHERINE2'),                             ('RELIGION_ORTHODOXY')
WHERE NOT EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C1_ORIENTAL');

INSERT OR REPLACE INTO FavoredReligions
           (LeaderType,                                       ReligionType)
SELECT   ('LEADER_GEDEMO_CATHERINE2'),                             ('RELIGION_C1_ORIENTAL')
WHERE EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C1_ORIENTAL');



--==========================================================================================================================
-- GEDEMON YNAEMP
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,						Leader,						MapName,			X,	Y)
VALUES	('CIVILIZATION_RUSSIA',	'LEADER_GEDEMO_CATHERINE2',	'GiantEarth',		31,	78),
		('CIVILIZATION_RUSSIA',	'LEADER_GEDEMO_CATHERINE2',	'GreatestEarthMap', 59,	59),
		('CIVILIZATION_RUSSIA',	'LEADER_GEDEMO_CATHERINE2',	'LargestEarthCustom', 39,	96),
		('CIVILIZATION_RUSSIA',	'LEADER_GEDEMO_CATHERINE2',	'LargeEurope', 52,	61),
		('CIVILIZATION_RUSSIA',	'LEADER_GEDEMO_CATHERINE2',	'PlayEuropeAgain', 65,	70),
		('CIVILIZATION_RUSSIA',	'LEADER_GEDEMO_CATHERINE2',	'Zobtzler_NorthernEurope_Map', 67,	24),
		('CIVILIZATION_RUSSIA',  'LEADER_GEDEMO_CATHERINE2',  'CordiformEarth',  43, 38);


