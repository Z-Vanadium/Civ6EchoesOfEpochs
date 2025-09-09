-- RECIV_Bavaria_Colors_Prismatic
-- Author: JNR
--------------------------------------------------------------

-- PlayerColors
--------------------------------------------------------------
UPDATE PlayerColors SET
		PrimaryColor='COLOR_STANDARD_WHITE_LT',
		SecondaryColor='COLOR_SC_DARK_CYAN',
		Alt1PrimaryColor='COLOR_STANDARD_BLUE_LT',
		Alt1SecondaryColor='COLOR_STANDARD_WHITE_LT'
WHERE Type='LEADER_LUDWIG' AND PrimaryColor='COLOR_SC_DARK_CYAN';
		
UPDATE PlayerColors SET
		Alt1PrimaryColor='COLOR_STANDARD_WHITE_LT',
		Alt1SecondaryColor='COLOR_SC_DARK_CYAN',
		Alt2PrimaryColor='COLOR_SC_LIGHT_GREECE_BLUE',
		Alt2SecondaryColor='COLOR_SC_DARK_GREECE_BLUE',
		Alt3PrimaryColor='COLOR_SC_DARK_GREECE_BLUE',
		Alt3SecondaryColor='COLOR_SC_LIGHT_GREECE_BLUE'
WHERE Type='LEADER_LUDWIG_JNR_BAVARIA' AND EXISTS (SELECT * FROM PlayerColors WHERE PrimaryColor='COLOR_SC_DARK_CYAN');
--------------------------------------------------------------