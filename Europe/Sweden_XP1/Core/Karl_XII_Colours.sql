--======================================================================
--	COLORS
--======================================================================
--	Colors
-------------------------------------
INSERT OR REPLACE INTO Colors
		(Type,								Color)
VALUES
		("COLOR_PLAYER_MER_KARL_XII_1",		"40,52,70,255"),	--#283446
		("COLOR_PLAYER_MER_KARL_XII_2",		"22,34,76,255");	--#16224C
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
			"LEADER_MER_KARL_XII",
			"Unique",

			"COLOR_PLAYER_MER_KARL_XII_2",
			"COLOR_STANDARD_YELLOW_LT",

			"COLOR_STANDARD_BLUE_LT",
			"COLOR_STANDARD_RED_DK",

			"COLOR_STANDARD_YELLOW_MD",
			"COLOR_PLAYER_MER_KARL_XII_1",

			"COLOR_STANDARD_WHITE_MD2",
			"COLOR_STANDARD_BLUE_DK"
		);
--======================================================================
--======================================================================
