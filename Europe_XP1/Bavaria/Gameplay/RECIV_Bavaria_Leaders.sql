-- RECIV_Bavaria_Leaders
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,							Kind)
VALUES	('LEADER_LUDWIG_JNR_BAVARIA',	'KIND_LEADER');
--------------------------------------------------------------

-- DuplicateLeaders
--------------------------------------------------------------
INSERT OR IGNORE INTO DuplicateLeaders
		(LeaderType,					OtherLeaderType)
VALUES	('LEADER_LUDWIG_JNR_BAVARIA',	'LEADER_LUDWIG');
--------------------------------------------------------------

-- Leaders
--------------------------------------------------------------
INSERT OR IGNORE INTO Leaders
		(LeaderType,					Name,									InheritFrom, SceneLayers)
SELECT	'LEADER_LUDWIG_JNR_BAVARIA',	'LOC_LEADER_LUDWIG_JNR_BAVARIA_NAME',	InheritFrom, SceneLayers
FROM	Leaders
WHERE	LeaderType='LEADER_LUDWIG';
--------------------------------------------------------------

-- LeaderQuotes
--------------------------------------------------------------
INSERT OR IGNORE INTO LeaderQuotes
		(LeaderType,					Quote, QuoteAudio)
SELECT	'LEADER_LUDWIG_JNR_BAVARIA',	Quote, QuoteAudio
FROM	LeaderQuotes
WHERE	LeaderType='LEADER_LUDWIG';
--------------------------------------------------------------

-- LeaderTraits
--------------------------------------------------------------
INSERT OR IGNORE INTO LeaderTraits
		(LeaderType,					TraitType)
SELECT	'LEADER_LUDWIG_JNR_BAVARIA',	TraitType
FROM	LeaderTraits
WHERE	LeaderType='LEADER_LUDWIG';
--------------------------------------------------------------

-- LoadingInfo
--------------------------------------------------------------
INSERT OR IGNORE INTO LoadingInfo
		(LeaderType,					ForegroundImage, BackgroundImage, LeaderText, DawnOfManLeaderId)
SELECT	'LEADER_LUDWIG_JNR_BAVARIA',	ForegroundImage, BackgroundImage, LeaderText, DawnOfManLeaderId
FROM	LoadingInfo
WHERE	LeaderType='LEADER_LUDWIG';
--------------------------------------------------------------

-- AgendaPreferredLeaders
--------------------------------------------------------------
INSERT OR IGNORE INTO AgendaPreferredLeaders
		(LeaderType,					AgendaType, PercentageChance)
SELECT	'LEADER_LUDWIG_JNR_BAVARIA',	AgendaType, PercentageChance
FROM	AgendaPreferredLeaders
WHERE	LeaderType='LEADER_LUDWIG';
--------------------------------------------------------------

-- HistoricalAgendas
--------------------------------------------------------------
INSERT OR IGNORE INTO HistoricalAgendas
		(LeaderType,					AgendaType)
SELECT	'LEADER_LUDWIG_JNR_BAVARIA',	AgendaType
FROM	HistoricalAgendas
WHERE	LeaderType='LEADER_LUDWIG';
--------------------------------------------------------------

-- FavoredReligions
--------------------------------------------------------------
INSERT OR IGNORE INTO FavoredReligions
		(LeaderType,					ReligionType)
SELECT	'LEADER_LUDWIG_JNR_BAVARIA',	ReligionType
FROM	FavoredReligions
WHERE	LeaderType='LEADER_LUDWIG';
--------------------------------------------------------------