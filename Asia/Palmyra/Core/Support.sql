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
        (Civilization,                 Leader,                           MapName,            X,        Y)
VALUES  ('CIVILIZATION_MER_PALMYRA',    'LEADER_MER_ODAENATHUS',        'FiraxisTSL',        49,        39),
        ('CIVILIZATION_MER_PALMYRA',    'LEADER_MER_ODAENATHUS',        'GiantEarth',        39,        53),
        ('CIVILIZATION_MER_PALMYRA',    'LEADER_MER_ODAENATHUS',        'GreatestEarthMap',    65,        40),
        ('CIVILIZATION_MER_PALMYRA',    'LEADER_MER_ODAENATHUS',        'PlayEuropeAgain',    85,        17),
        ('CIVILIZATION_MER_PALMYRA',    'LEADER_MER_ODAENATHUS',        'LargeEurope',    65,        18);
