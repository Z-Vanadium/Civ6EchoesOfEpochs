--==========================================================================================================================	
-- UNITS: TRAITS
--==========================================================================================================================	
--------------------------------------------------------------
	
INSERT INTO Types
		(Type,									Kind			)
VALUES	('UNIT_MER_DRABANT',							'KIND_UNIT'		);

INSERT INTO Tags
		(Tag,									Vocabulary		)
VALUES	('CLASS_MER_DRABANT',					'ABILITY_CLASS'	);

INSERT INTO TypeTags
		(Type,									Tag)
SELECT 	'UNIT_MER_DRABANT',							Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_CUIRASSIER';

INSERT INTO TypeTags
		(Type,									Tag						)
VALUES	('UNIT_MER_DRABANT',					'CLASS_MER_DRABANT'	);

INSERT INTO UnitAiInfos
		(UnitType,								AiType)
SELECT 	'UNIT_MER_DRABANT',							AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_CUIRASSIER';

INSERT INTO UnitAiInfos
		(UnitType,								AiType		   )
VALUES 	('UNIT_MER_DRABANT',					'UNITAI_BUILD' );

INSERT INTO UnitReplaces
		(CivUniqueUnitType,						ReplacesUnitType)
VALUES	('UNIT_MER_DRABANT',					'UNIT_CUIRASSIER');
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		Maintenance,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		InitialLevel,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		PseudoYieldType,
		StrategicResource,
		MandatoryObsoleteTech,
		PrereqTech
		)
SELECT	'UNIT_MER_DRABANT',	-- UnitType
		'LOC_UNIT_MER_DRABANT_NAME',	-- Name
		'LOC_UNIT_MER_DRABANT_DESCRIPTION', -- Description
		'TRAIT_LEADER_UNIT_MER_DRABANT', -- TraitType
		BaseMoves,
		350,
		Maintenance,
		PurchaseYield,
		AdvisorType,
		68,
		RangedCombat,
		Range,
		BaseSightRange,
		InitialLevel,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		PseudoYieldType,
		StrategicResource,
		MandatoryObsoleteTech,
		PrereqTech -- PrereqTech
FROM	Units
WHERE	UnitType = 'UNIT_CUIRASSIER';
		
INSERT INTO UnitUpgrades
		(Unit,			UpgradeUnit)
SELECT 	'UNIT_MER_DRABANT',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_CUIRASSIER';

--==========================================================================================================================
-- UNITS: ABILITIES
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,											Kind)
VALUES	('ABILITY_MER_DRABANT',						'KIND_ABILITY');	
--------------------------------------------------------------------------------------------------------------------------
-- TypeTags
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO TypeTags	
		(Type,											Tag)
VALUES	('ABILITY_MER_DRABANT',						'CLASS_MER_DRABANT');	
--------------------------------------------------------------------------------------------------------------------------
-- UnitAbilities
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO UnitAbilities	
		(UnitAbilityType,								Name,												Description)
VALUES	('ABILITY_MER_DRABANT',						'LOC_UNIT_MER_DRABANT_NAME',					'LOC_ABILITY_MER_DRABANT_DESCRIPTION');	
--------------------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO UnitAbilityModifiers	
		(UnitAbilityType,								ModifierId)
VALUES	('ABILITY_MER_DRABANT',						'CORBACI_FREE_PROMOTION'),
		('ABILITY_MER_DRABANT',						'GARDE_GREAT_GENERAL_POINTS');
