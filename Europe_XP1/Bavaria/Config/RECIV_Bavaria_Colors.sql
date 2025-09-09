-- RECIV_Bavaria_Colors
-- Author: JNR
--------------------------------------------------------------

-- PlayerColors
--------------------------------------------------------------
INSERT OR IGNORE INTO PlayerColors
		(Type,							Usage,
		PrimaryColor,					SecondaryColor,
		Alt1PrimaryColor,				Alt1SecondaryColor,
		Alt2PrimaryColor,				Alt2SecondaryColor,
		Alt3PrimaryColor,				Alt3SecondaryColor)
VALUES	('LEADER_LUDWIG_JNR_BAVARIA',	'Unique',
		'COLOR_STANDARD_BLUE_LT',		'COLOR_STANDARD_WHITE_LT',
		'COLOR_STANDARD_WHITE_LT',		'COLOR_STANDARD_BLUE_LT',
		'COLOR_STANDARD_RED_MD',		'COLOR_STANDARD_WHITE_LT',
		'COLOR_STANDARD_YELLOW_MD',		'COLOR_STANDARD_WHITE_DK');
		
UPDATE PlayerColors SET
		PrimaryColor='COLOR_STANDARD_WHITE_LT',
		SecondaryColor='COLOR_STANDARD_BLUE_LT',
		Alt3PrimaryColor='COLOR_STANDARD_BLUE_LT',
		Alt3SecondaryColor='COLOR_STANDARD_WHITE_LT'
WHERE Type='LEADER_LUDWIG';
--------------------------------------------------------------