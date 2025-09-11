--======================================================================
--	COLORS
--======================================================================
--	Colors
-------------------------------------
INSERT OR REPLACE INTO Colors
		(Type,									Color)
VALUES
		("COLOR_PLAYER_MER_KYIV_YAROSLAV_1",	"112,51,51,255"),	--#703333
		("COLOR_PLAYER_MER_KYIV_YAROSLAV_2",	"255,239,195,255"),	--#FFEFC3
		("COLOR_PLAYER_MER_KYIV_YAROSLAV_3",	"4,56,141,255"),	--#04388D
		("COLOR_PLAYER_MER_KYIV_YAROSLAV_4",	"254,203,0,255"),	--#FECB00
		("COLOR_PLAYER_MER_KYIV_YAROSLAV_5",	"174,24,46,255"),	--#AE182E
		("COLOR_PLAYER_MER_KYIV_YAROSLAV_6",	"255,242,152,255");	--#FFF298
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
			"LEADER_MER_KYIV_YAROSLAV",
			"Unique",

			"COLOR_PLAYER_MER_KYIV_YAROSLAV_5",
			"COLOR_PLAYER_MER_KYIV_YAROSLAV_6",

			"COLOR_PLAYER_MER_KYIV_YAROSLAV_3",
			"COLOR_PLAYER_MER_KYIV_YAROSLAV_4",

			"COLOR_STANDARD_YELLOW_LT",
			"COLOR_STANDARD_BLUE_DK",

			"COLOR_PLAYER_MER_KYIV_YAROSLAV_1",
			"COLOR_PLAYER_MER_KYIV_YAROSLAV_2"
		);
--======================================================================
--======================================================================
