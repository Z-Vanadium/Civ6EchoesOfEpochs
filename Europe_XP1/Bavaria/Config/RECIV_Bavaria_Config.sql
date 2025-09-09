-- RECIV_Bavaria_Config
-- Author: JNR
--------------------------------------------------------------

-- Players
--------------------------------------------------------------
INSERT OR IGNORE INTO Players
		(Domain,	CivilizationType,			CivilizationName,						CivilizationIcon,					CivilizationAbilityName,						CivilizationAbilityDescription,							CivilizationAbilityIcon,			LeaderType,						LeaderName,								LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon, Portrait,					PortraitBackground)
SELECT	Domain,		'CIVILIZATION_JNR_BAVARIA',	'LOC_CIVILIZATION_JNR_BAVARIA_NAME',	'ICON_CIVILIZATION_JNR_BAVARIA',	'LOC_TRAIT_CIVILIZATION_JNR_WEISS_BLAU_NAME',	'LOC_TRAIT_CIVILIZATION_JNR_WEISS_BLAU_DESCRIPTION',	'ICON_CIVILIZATION_JNR_BAVARIA',	'LEADER_LUDWIG_JNR_BAVARIA',	'LOC_LEADER_LUDWIG_JNR_BAVARIA_NAME',	LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon, 'LEADER_LUDWIG_NEUTRAL',	'LEADER_HOJO_BACKGROUND'
FROM	Players
WHERE	LeaderType='LEADER_LUDWIG';
--------------------------------------------------------------

-- DuplicateLeaders
--------------------------------------------------------------
INSERT OR IGNORE INTO DuplicateLeaders
		(Domain,						LeaderType,			OtherLeaderType)
VALUES	('Players:StandardPlayers',		'LEADER_LUDWIG',	'LEADER_LUDWIG_JNR_BAVARIA'),
		('Players:Expansion1_Players',	'LEADER_LUDWIG',	'LEADER_LUDWIG_JNR_BAVARIA'),
		('Players:Expansion2_Players',	'LEADER_LUDWIG',	'LEADER_LUDWIG_JNR_BAVARIA');
--------------------------------------------------------------

-- PlayerItems
--------------------------------------------------------------
INSERT OR IGNORE INTO PlayerItems
		(Domain,						CivilizationType,			LeaderType,						Type,									Name,											Description,											Icon,										SortIndex)
VALUES	('Players:StandardPlayers',		'CIVILIZATION_JNR_BAVARIA',	'LEADER_LUDWIG_JNR_BAVARIA',	'UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_NAME',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION',	'ICON_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	10),
		('Players:Expansion1_Players',	'CIVILIZATION_JNR_BAVARIA',	'LEADER_LUDWIG_JNR_BAVARIA',	'UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_NAME',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION',	'ICON_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	10),
		('Players:Expansion2_Players',	'CIVILIZATION_JNR_BAVARIA',	'LEADER_LUDWIG_JNR_BAVARIA',	'UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_NAME',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION',	'ICON_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	10),

		('Players:StandardPlayers',		'CIVILIZATION_JNR_BAVARIA',	'LEADER_LUDWIG_JNR_BAVARIA',	'DISTRICT_JNR_DULT',					'LOC_DISTRICT_JNR_DULT_NAME',					'LOC_DISTRICT_JNR_DULT_DESCRIPTION',					'ICON_DISTRICT_JNR_DULT',					20),
		('Players:Expansion1_Players',	'CIVILIZATION_JNR_BAVARIA',	'LEADER_LUDWIG_JNR_BAVARIA',	'DISTRICT_JNR_DULT',					'LOC_DISTRICT_JNR_DULT_NAME	',					'LOC_DISTRICT_JNR_DULT_DESCRIPTION',					'ICON_DISTRICT_JNR_DULT',					20),
		('Players:Expansion2_Players',	'CIVILIZATION_JNR_BAVARIA',	'LEADER_LUDWIG_JNR_BAVARIA',	'DISTRICT_JNR_DULT',					'LOC_DISTRICT_JNR_DULT_NAME',					'LOC_DISTRICT_JNR_DULT_DESCRIPTION',					'ICON_DISTRICT_JNR_DULT',					20);

INSERT OR IGNORE INTO PlayerItems
		(Domain,						CivilizationType,			LeaderType,						Type,									Name,											Description,											Icon,										SortIndex)
SELECT	'Players:StandardPlayers',		'CIVILIZATION_JNR_BAVARIA',	'LEADER_LUDWIG_JNR_BAVARIA',	'UNIT_JNR_BAVARIAN_PAPPENHEIMER',		'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_NAME',		'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_DESCRIPTION',		'ICON_UNIT_JNR_BAVARIAN_PAPPENHEIMER',		SortIndex
FROM	PlayerItems
WHERE	Type='UNIT_GERMAN_LANDSKNECHT';

INSERT OR IGNORE INTO PlayerItems
		(Domain,						CivilizationType,			LeaderType,						Type,									Name,											Description,											Icon,										SortIndex)
SELECT	'Players:Expansion1_Players',	'CIVILIZATION_JNR_BAVARIA',	'LEADER_LUDWIG_JNR_BAVARIA',	'UNIT_JNR_BAVARIAN_PAPPENHEIMER',		'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_NAME',		'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_DESCRIPTION_XP1',	'ICON_UNIT_JNR_BAVARIAN_PAPPENHEIMER',		SortIndex
FROM	PlayerItems
WHERE	Type='UNIT_GERMAN_LANDSKNECHT';

INSERT OR IGNORE INTO PlayerItems
		(Domain,						CivilizationType,			LeaderType,						Type,									Name,											Description,											Icon,										SortIndex)
SELECT	'Players:Expansion2_Players',	'CIVILIZATION_JNR_BAVARIA',	'LEADER_LUDWIG_JNR_BAVARIA',	'UNIT_JNR_BAVARIAN_PAPPENHEIMER',		'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_NAME',		'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_DESCRIPTION_XP1',	'ICON_UNIT_JNR_BAVARIAN_PAPPENHEIMER',		SortIndex
FROM	PlayerItems
WHERE	Type='UNIT_GERMAN_LANDSKNECHT';
--------------------------------------------------------------

-- MapLeaders
--------------------------------------------------------------
INSERT OR IGNORE INTO MapLeaders
		(LeaderType,				Map)
SELECT	'CIVILIZATION_JNR_BAVARIA',	Map
FROM	MapLeaders
WHERE	LeaderType='LEADER_LUDWIG';
--------------------------------------------------------------

-- MapStartPositions
--------------------------------------------------------------
INSERT OR IGNORE INTO MapStartPositions
		(Value,						Map, Plot, Type)
SELECT	'CIVILIZATION_JNR_BAVARIA',	Map, Plot, Type
FROM	MapStartPositions
WHERE	Value='LEADER_LUDWIG';
--------------------------------------------------------------