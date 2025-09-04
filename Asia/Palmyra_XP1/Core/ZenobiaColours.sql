--======================================================================
--	COLORS
--======================================================================
--	Colors
-------------------------------------
INSERT OR REPLACE INTO Colors
		(Type,								Color)
VALUES
		("COLOR_PLAYER_MER_ZENOBIA_1",		"80,51,80,255"),	--#503350
		("COLOR_PLAYER_MER_ZENOBIA_2",		"128,30,31,255"),	--#801E1F
		("COLOR_PLAYER_MER_ZENOBIA_3",		"118,169,255,255"),	--#76A9FF
		("COLOR_PLAYER_MER_ZENOBIA_4",		"208,226,255,255"),	--#D0E2FF
		("COLOR_PLAYER_MER_ZENOBIA_5",		"54,41,90,255"),	--#36295A
		("COLOR_PLAYER_MER_ZENOBIA_6",		"130,225,198,255");	--#82E1C6
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
			"LEADER_MER_ZENOBIA",
			"Unique",

			"COLOR_PLAYER_MER_ZENOBIA_5",
			"COLOR_PLAYER_MER_ZENOBIA_6",

			"COLOR_STANDARD_BLUE_LT",
			"COLOR_PLAYER_MER_ZENOBIA_4",

			"COLOR_PLAYER_MER_ZENOBIA_2",
			"COLOR_PLAYER_MER_ZENOBIA_3",

			"COLOR_PLAYER_MER_ZENOBIA_1",
			"COLOR_STANDARD_YELLOW_MD"
		);
--======================================================================
--======================================================================
