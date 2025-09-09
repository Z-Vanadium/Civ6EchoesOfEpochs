-- RECIV_Bavaria_Icons
-- Author: JNR
--------------------------------------------------------------

-- IconTextureAtlases
--------------------------------------------------------------
INSERT OR IGNORE INTO IconTextureAtlases
		(Name,											IconSize,	IconsPerRow,	IconsPerColumn,	Filename)
VALUES	('ICON_ATLAS_JNR_BAVARIA',						22,			1,				1,				'Bavaria22'),
		('ICON_ATLAS_JNR_BAVARIA',						30,			1,				1,				'Bavaria30'),
		('ICON_ATLAS_JNR_BAVARIA',						32,			1,				1,				'Bavaria32'),
		('ICON_ATLAS_JNR_BAVARIA',						36,			1,				1,				'Bavaria36'),
		('ICON_ATLAS_JNR_BAVARIA',						44,			1,				1,				'Bavaria44'),
		('ICON_ATLAS_JNR_BAVARIA',						45,			1,				1,				'Bavaria45'),
		('ICON_ATLAS_JNR_BAVARIA',						48,			1,				1,				'Bavaria48'),
		('ICON_ATLAS_JNR_BAVARIA',						50,			1,				1,				'Bavaria50'),
		('ICON_ATLAS_JNR_BAVARIA',						64,			1,				1,				'Bavaria64'),
		('ICON_ATLAS_JNR_BAVARIA',						80,			1,				1,				'Bavaria80'),
		('ICON_ATLAS_JNR_BAVARIA',						128,		1,				1,				'Bavaria128'),
		('ICON_ATLAS_JNR_BAVARIA',						200,		1,				1,				'Bavaria200'),
		('ICON_ATLAS_JNR_BAVARIA',						256,		1,				1,				'Bavaria256'),

		('ICON_ATLAS_JNR_BAVARIA_UNITS',				22,			2,				1,				'Bavaria_Units22'),
		('ICON_ATLAS_JNR_BAVARIA_UNITS',				32,			2,				1,				'Bavaria_Units32'),
		('ICON_ATLAS_JNR_BAVARIA_UNITS',				38,			2,				1,				'Bavaria_Units38'),
		('ICON_ATLAS_JNR_BAVARIA_UNITS',				50,			2,				1,				'Bavaria_Units50'),
		('ICON_ATLAS_JNR_BAVARIA_UNITS',				80,			2,				1,				'Bavaria_Units80'),
		('ICON_ATLAS_JNR_BAVARIA_UNITS',				256,		2,				1,				'Bavaria_Units256'),

		('ICON_ATLAS_JNR_BAVARIA_UNIT_PORTRAITS',		38,			2,				1,				'Bavaria_UnitPortraits38'),
		('ICON_ATLAS_JNR_BAVARIA_UNIT_PORTRAITS',		50,			2,				1,				'Bavaria_UnitPortraits50'),
		('ICON_ATLAS_JNR_BAVARIA_UNIT_PORTRAITS',		70,			2,				1,				'Bavaria_UnitPortraits70'),
		('ICON_ATLAS_JNR_BAVARIA_UNIT_PORTRAITS',		95,			2,				1,				'Bavaria_UnitPortraits95'),
		('ICON_ATLAS_JNR_BAVARIA_UNIT_PORTRAITS',		200,		2,				1,				'Bavaria_UnitPortraits200'),
		('ICON_ATLAS_JNR_BAVARIA_UNIT_PORTRAITS',		256,		2,				1,				'Bavaria_UnitPortraits256'),

		('ICON_ATLAS_JNR_BAVARIA_DISTRICTS',			22,			1,				1,				'Bavaria_Districts22'),
		('ICON_ATLAS_JNR_BAVARIA_DISTRICTS',			32,			1,				1,				'Bavaria_Districts32'),
		('ICON_ATLAS_JNR_BAVARIA_DISTRICTS',			38,			1,				1,				'Bavaria_Districts38'),
		('ICON_ATLAS_JNR_BAVARIA_DISTRICTS',			50,			1,				1,				'Bavaria_Districts50'),
		('ICON_ATLAS_JNR_BAVARIA_DISTRICTS',			80,			1,				1,				'Bavaria_Districts80'),
		('ICON_ATLAS_JNR_BAVARIA_DISTRICTS',			128,		1,				1,				'Bavaria_Districts128'),
		('ICON_ATLAS_JNR_BAVARIA_DISTRICTS',			256,		1,				1,				'Bavaria_Districts256'),

		('ICON_ATLAS_JNR_BAVARIA_DISTRICTS_FOW',		256,		1,				1,				'Bavaria_Districts256');

INSERT OR IGNORE INTO IconTextureAtlases
		(Name,											IconSize,	IconsPerRow,	IconsPerColumn,	Filename,					Baseline)
VALUES	('ICON_ATLAS_JNR_BAVARIA_DISTRICTS_FONTICON',	22,			1,				1,				'Bavaria_Districts22',		6);
----------------------------------------------------------------

-- IconDefinitions
--------------------------------------------------------------
INSERT OR IGNORE INTO IconDefinitions
		(Name,												Atlas,											'Index')
VALUES	('ICON_CIVILIZATION_JNR_BAVARIA',					'ICON_ATLAS_JNR_BAVARIA',						0),
		
		('ICON_LEADER_LUDWIG_JNR_BAVARIA',					'ICON_ATLAS_GERMANY_LUDWIG',					0),

		('ICON_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',			'ICON_ATLAS_JNR_BAVARIA_UNITS',					0),
		('ICON_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_PORTRAIT',	'ICON_ATLAS_JNR_BAVARIA_UNIT_PORTRAITS',		0),
		('ICON_UNIT_JNR_BAVARIAN_PAPPENHEIMER',				'ICON_ATLAS_JNR_BAVARIA_UNITS',					1),
		('ICON_UNIT_JNR_BAVARIAN_PAPPENHEIMER_PORTRAIT',	'ICON_ATLAS_JNR_BAVARIA_UNIT_PORTRAITS',		1),

		('ICON_DISTRICT_JNR_DULT',							'ICON_ATLAS_JNR_BAVARIA_DISTRICTS',				0),
		('ICON_DISTRICT_JNR_DULT_FOW',						'ICON_ATLAS_JNR_BAVARIA_DISTRICTS_FOW',			0),
		('DISTRICT_JNR_DULT',								'ICON_ATLAS_JNR_BAVARIA_DISTRICTS_FONTICON',	0);
--------------------------------------------------------------