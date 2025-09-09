-- RECIV_Bavaria_XP1
-- Author: JNR
--------------------------------------------------------------

-- MomentIllustrations
--------------------------------------------------------------
--INSERT OR IGNORE INTO MomentIllustrations
		--(MomentIllustrationType,				MomentDataType,			GameDataType,							Texture)
--VALUES	('MOMENT_ILLUSTRATION_UNIQUE_DISTRICT',	'MOMENT_DATA_DISTRICT',	'DISTRICT_JNR_DULT',					'MomentJNR_Dult.dds'),
		--('MOMENT_ILLUSTRATION_UNIQUE_UNIT',		'MOMENT_DATA_UNIT',		'UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	'MomentJNR_Bavarian_Gebirgsschuetze.dds');

INSERT OR IGNORE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,							Texture)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_DISTRICT',	'MOMENT_DATA_DISTRICT',	'DISTRICT_JNR_DULT',					'Moment_Infrastructure_Brazil.dds'),
		('MOMENT_ILLUSTRATION_UNIQUE_UNIT',		'MOMENT_DATA_UNIT',		'UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',	'Moment_UniqueUnit_France_GardeImperiale.dds');

INSERT OR IGNORE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,							Texture)
SELECT	'MOMENT_ILLUSTRATION_UNIQUE_UNIT',		'MOMENT_DATA_UNIT',		'UNIT_JNR_BAVARIAN_PAPPENHEIMER',		'Moment_UniqueUnit_Russia.dds'
FROM	Units
WHERE	UnitType='UNIT_JNR_BAVARIAN_PAPPENHEIMER';
--------------------------------------------------------------

-- Modifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO Modifiers
		(ModifierId,							ModifierType)
SELECT	'PAPPENHEIMER_JNR_EMERGENCY_ENABLED',	'MODIFIER_EMERGENCY_UNITS_GRANT_ABILITY'
FROM	Units
WHERE	UnitType='UNIT_JNR_BAVARIAN_PAPPENHEIMER';
--------------------------------------------------------------

-- ModifierArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,							Name,			Value)
SELECT	'PAPPENHEIMER_JNR_EMERGENCY_ENABLED',	'AbilityType',	'ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE'
FROM	Units
WHERE	UnitType='UNIT_JNR_BAVARIAN_PAPPENHEIMER';
--------------------------------------------------------------

-- EmergencyBuffs
--------------------------------------------------------------
INSERT OR IGNORE INTO EmergencyBuffs
		(ModifierId,							EmergencyType)
SELECT	'PAPPENHEIMER_JNR_EMERGENCY_ENABLED',	EmergencyType
FROM	EmergencyBuffs
WHERE	EmergencyType IN (
			'EMERGENCY_MILITARY',
			'EMERGENCY_SETTLED_CITY',
			'EMERGENCY_CAPTURE_CITY_STATE',
			'EMERGENCY_RELIGIOUS',
			'EMERGENCY_NUCLEAR',
			'EMERGENCY_BACKSTAB')
		AND EXISTS (SELECT * FROM Units WHERE UnitType='UNIT_JNR_BAVARIAN_PAPPENHEIMER');
--------------------------------------------------------------