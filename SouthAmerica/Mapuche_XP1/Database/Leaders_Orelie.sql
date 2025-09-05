--==========================================================================================================================
-- LEADER
--==========================================================================================================================
-- Types
-------------------------------------
INSERT INTO Types
		(Type,						Kind)
VALUES	('LEADER_LEU_ORELIE',	'KIND_LEADER');
-------------------------------------
-- CivilizationLeaders
-------------------------------------		
INSERT INTO CivilizationLeaders	
		(CivilizationType,				LeaderType,						CapitalName)
VALUES	('CIVILIZATION_MAPUCHE',		'LEADER_LEU_ORELIE',			'LOC_CITY_NAME_LEU_ORELIE_01');	

-------------------------------------
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				ForegroundImage,						PlayDawnOfManAudio,		BackgroundImage)
VALUES	('LEADER_LEU_ORELIE',		'LEADER_LEU_ORELIE_NEUTRAL.dds',		0,						'LEADER_LEU_ORELIE_BACKGROUND');	

--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,			Name,							InheritFrom,		SceneLayers)
VALUES	('LEADER_LEU_ORELIE',	'LOC_LEADER_LEU_ORELIE_NAME',	'LEADER_DEFAULT',	3);		

-------------------------------------
-- LeaderQuotes
-------------------------------------
INSERT INTO LeaderQuotes	
		(LeaderType,						Quote)
VALUES	('LEADER_LEU_ORELIE',		'LOC_PEDIA_LEADERS_PAGE_LEADER_LEU_ORELIE_QUOTE');		

-------------------------------------
-- FavoredReligions
-------------------------------------
INSERT INTO FavoredReligions	
		(LeaderType,			ReligionType)
VALUES	('LEADER_LEU_ORELIE',	'RELIGION_CATHOLICISM');	

-------------------------------------
-- StartPosition 
-------------------------------------
-- To check these use the following link: http://www.sukrittan.com/Mod_Apps/TSLPlanner/?Map=Zobtzler_TheAmericas_Map
-------------------------------------
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT OR REPLACE INTO StartPosition
		(Civilization,				Leader,					MapName,					X,		Y)
VALUES	('CIVILIZATION_MAPUCHE',	'LEADER_LEU_ORELIE',		'GiantEarth',				155,	17),
		('CIVILIZATION_MAPUCHE',	'LEADER_LEU_ORELIE',		'GreatestEarthMap',			25,		17),
		('CIVILIZATION_MAPUCHE',	'LEADER_LEU_ORELIE',		'LargestEarth',				206,	19),
		('CIVILIZATION_MAPUCHE',	'LEADER_LEU_ORELIE',		'Zobtzler_TheAmericas_Map',	82,		11);


--==========================================================================================================================
--==========================================================================================================================
