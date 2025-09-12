--==========================================================================================================================
-- LEADERS: COLOURS
--==========================================================================================================================
-- PlayerColors
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO PlayerColors	
		(Type,					Usage,		PrimaryColor, 								 SecondaryColor,								Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor)
SELECT	'LEADER_JFD_TRUMP',		'Unique',	'COLOR_PLAYER_JFD_AMERICA_TRUMP_PRIMARY',	'COLOR_PLAYER_JFD_AMERICA_TRUMP_SECONDARY',		Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor
FROM PlayerColors WHERE Type = 'LEADER_T_ROOSEVELT';
--------------------------------------------------------------------------------------------------------------------------					
-- Colors			
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Colors 
		(Type, 											Color)
VALUES	('COLOR_PLAYER_JFD_AMERICA_TRUMP_PRIMARY', 		'26,27,101,255'),
		('COLOR_PLAYER_JFD_AMERICA_TRUMP_SECONDARY', 	'139,40,75,255');	
--==========================================================================================================================
--==========================================================================================================================