--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players

INSERT INTO Players	
		(Domain,							CivilizationType,		Portrait,									PortraitBackground,						LeaderType,						LeaderName,								 LeaderIcon,							LeaderAbilityName,								LeaderAbilityDescription,							LeaderAbilityIcon,					CivilizationName,		CivilizationIcon,		CivilizationAbilityName,	CivilizationAbilityDescription,		CivilizationAbilityIcon,			HumanPlayable)
SELECT	'Players:Expansion2_Players',		CivilizationType,		'LEADER_LEU_ORELIE_NEUTRAL.dds',		'LEADER_LEU_ORELIE_BACKGROUND',	'LEADER_LEU_ORELIE',		'LOC_LEADER_LEU_ORELIE_NAME',	 'ICON_LEADER_LEU_ORELIE',		'LOC_TRAIT_LEADER_LEU_ORELIE_NAME',		'LOC_TRAIT_LEADER_LEU_ORELIE_DESCRIPTION',	'ICON_LEADER_LEU_ORELIE',		CivilizationName,		CivilizationIcon,		CivilizationAbilityName,	CivilizationAbilityDescription,		CivilizationAbilityIcon,		1
FROM Players WHERE CivilizationType = 'CIVILIZATION_MAPUCHE' AND Domain = 'Players:Expansion2_Players' AND LeaderType = 'LEADER_LAUTARO';	

INSERT INTO PlayerItems	
		(Domain,							CivilizationType,	LeaderType,					Type,		Icon,		Name,	Description,	  SortIndex)
SELECT	'Players:Expansion2_Players',		CivilizationType,	'LEADER_LEU_ORELIE',	Type,		Icon,		Name,	Description,	  SortIndex
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_MAPUCHE' AND Domain = 'Players:Expansion2_Players' AND LeaderType = 'LEADER_LAUTARO';	

-------------------------------------
-- StartPosition 
-------------------------------------
-- To check these use the following link: http://www.sukrittan.com/Mod_Apps/TSLPlanner/?Map=FiraxisTSL
-------------------------------------
INSERT INTO MapLeaders    
        (LeaderType,			           Map)
VALUES    ('LEADER_LEU_ORELIE',            '../../Assets/Maps/EarthMaps/TSLEarthStandard.Civ6Map'),
			('LEADER_LEU_ORELIE',          '{4873eb62-8ccc-4574-b784-dda455e74e68}Maps/EarthMaps/TSLEarthStandard_XP2.Civ6Map');

INSERT INTO MapStartPositions    
	        (Type,            Value,                          Plot,        Map)
VALUES		('LEADER',        'LEADER_LEU_ORELIE',            1197,        '../../Assets/Maps/EarthMaps/TSLEarthStandard.Civ6Map'),
			('LEADER',        'LEADER_LEU_ORELIE',            1197,        '{4873eb62-8ccc-4574-b784-dda455e74e68}Maps/EarthMaps/TSLEarthStandard_XP2.Civ6Map');

--==========================================================================================================================
--==========================================================================================================================
