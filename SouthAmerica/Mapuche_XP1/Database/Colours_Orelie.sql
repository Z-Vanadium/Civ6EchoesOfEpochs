--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- Colors
-------------------------------------	
INSERT OR REPLACE INTO Colors
		(Type,										Color)
VALUES	("COLOR_PLAYER_LEU_ORELIE_PRIMARY",			"22,21,122,255"),	--#16157A
		("COLOR_PLAYER_LEU_ORELIE_SECONDARY",		"219,255,252,255"),	--#DBFFFC
		("COLOR_PLAYER_LEU_ORELIE_PRIMARY_1",		"26,167,29,255"),	--#1AA71D
		("COLOR_PLAYER_LEU_ORELIE_SECONDARY_1",		"255,255,255,255"),	--#FFFFFF
		("COLOR_PLAYER_LEU_ORELIE_PRIMARY_2",		"241,255,241,255"),	--#F1FFF1
		("COLOR_PLAYER_LEU_ORELIE_SECONDARY_2",		"20,100,15,255"),	--#14960F
		("COLOR_PLAYER_LEU_ORELIE_PRIMARY_3",		"81,241,255,255"),	--#51F1FF
		("COLOR_PLAYER_LEU_ORELIE_SECONDARY_3",		"35,51,89,255");	--#233359
-------------------------------------
-- PlayerColors
-------------------------------------	
INSERT INTO PlayerColors
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
			'LEADER_LEU_ORELIE',
			'Unique',

			'COLOR_PLAYER_LEU_ORELIE_PRIMARY',
			'COLOR_PLAYER_LEU_ORELIE_SECONDARY',

			'COLOR_PLAYER_LEU_ORELIE_PRIMARY_1',
			'COLOR_PLAYER_LEU_ORELIE_SECONDARY_1',

			'COLOR_PLAYER_LEU_ORELIE_PRIMARY_2',
			'COLOR_PLAYER_LEU_ORELIE_SECONDARY_2',

			'COLOR_PLAYER_LEU_ORELIE_PRIMARY_3',
			'COLOR_PLAYER_LEU_ORELIE_SECONDARY_3'
		);
--==========================================================================================================================
--==========================================================================================================================
