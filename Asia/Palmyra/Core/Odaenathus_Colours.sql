--======================================================================
--	COLORS
--======================================================================
--	Colors
-------------------------------------
INSERT OR REPLACE INTO Colors
		(Type,									Color)
VALUES
		("COLOR_PLAYER_MER_ODAENATHUS_1",		"38,74,135,255"),	--#264A87
		("COLOR_PLAYER_MER_ODAENATHUS_2",		"255,149,245,255"),	--#FF95F5
		("COLOR_PLAYER_MER_ODAENATHUS_3",		"69,21,53,255"),	--#451535
		("COLOR_PLAYER_MER_ODAENATHUS_4",		"255,186,255,255"),	--#FFBAFF
		("COLOR_PLAYER_MER_ODAENATHUS_5",		"112,16,16,255"),	--#701010
		("COLOR_PLAYER_MER_ODAENATHUS_6",		"172,203,255,255");	--#ACCBFF
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
			"LEADER_MER_ODAENATHUS",
			"Unique",

			"COLOR_PLAYER_MER_ODAENATHUS_5",
			"COLOR_PLAYER_MER_ODAENATHUS_6",

			"COLOR_PLAYER_MER_ODAENATHUS_3",
			"COLOR_PLAYER_MER_ODAENATHUS_4",

			"COLOR_PLAYER_MER_ODAENATHUS_1",
			"COLOR_PLAYER_MER_ODAENATHUS_2",

			"COLOR_STANDARD_YELLOW_LT",
			"COLOR_STANDARD_PURPLE_DK"
		);
--======================================================================
--======================================================================
