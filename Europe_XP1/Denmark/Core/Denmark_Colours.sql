--======================================================================
--	COLORS
--======================================================================
--	Colors
-------------------------------------
INSERT OR REPLACE INTO Colors
		(Type,									Color)
VALUES
		("COLOR_PLAYER_MER_CHRISTIAN_IV_1",		"139,75,11,255"),	--#8B4B0B
		("COLOR_PLAYER_MER_CHRISTIAN_IV_2",		"0,26,91,255"),	--#001A5B
		("COLOR_PLAYER_MER_CHRISTIAN_IV_3",		"187,4,43,255"),	--#BB042B
		("COLOR_PLAYER_MER_CHRISTIAN_IV_4",		"250,223,79,255"),	--#FADF4F
		("COLOR_PLAYER_MER_CHRISTIAN_IV_5",		"23,106,181,255"),	--#176AB5
		("COLOR_PLAYER_MER_CHRISTIAN_IV_6",		"200,16,46,255"),	--#C8102E
		("COLOR_PLAYER_MER_CHRISTIAN_IV_7",		"247,204,145,255");	--#F7CC91
-------------------------------------
--	PlayerColors
-------------------------------------
INSERT OR REPLACE INTO PlayerColors
		(
			Type,
			Usage,

			PrimaryColor,
			SecondaryColor,

			Alt1PrimaryColor,
			Alt1SecondaryColor,

			Alt2PrimaryColor,
			Alt2SecondaryColor,

			Alt3PrimaryColor,
			Alt3SecondaryColor
		)
VALUES
		(
			"LEADER_MER_CHRISTIAN_IV",
			"Unique",

			"COLOR_PLAYER_MER_CHRISTIAN_IV_6",
			"COLOR_PLAYER_MER_CHRISTIAN_IV_7",

			"COLOR_PLAYER_MER_CHRISTIAN_IV_4",
			"COLOR_PLAYER_MER_CHRISTIAN_IV_5",

			"COLOR_PLAYER_MER_CHRISTIAN_IV_2",
			"COLOR_PLAYER_MER_CHRISTIAN_IV_3",

			"COLOR_PLAYER_MER_CHRISTIAN_IV_1",
			"COLOR_STANDARD_YELLOW_LT"
		);
--======================================================================
--======================================================================
