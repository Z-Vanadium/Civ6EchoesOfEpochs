------------------------------
----CLIBANARII--------------------
-------------------------------
INSERT INTO Types
		(Type,									Kind			)
VALUES	('UNIT_MER_CLIBANARII',							'KIND_UNIT'		);

INSERT INTO Tags
		(Tag,									Vocabulary		)
VALUES	('CLASS_MER_CLIBANARII',					'ABILITY_CLASS'	);

INSERT INTO TypeTags
		(Type,									Tag)
SELECT 	'UNIT_MER_CLIBANARII',							Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_KNIGHT';

INSERT INTO TypeTags
		(Type,									Tag						)
VALUES	('UNIT_MER_CLIBANARII',					'CLASS_MER_CLIBANARII'	);

INSERT INTO UnitAiInfos
		(UnitType,								AiType)
SELECT 	'UNIT_MER_CLIBANARII',							AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_KNIGHT';

INSERT INTO UnitAiInfos
		(UnitType,								AiType		   )
VALUES 	('UNIT_MER_CLIBANARII',					'UNITAI_BUILD' );

INSERT INTO UnitReplaces
		(CivUniqueUnitType,						ReplacesUnitType)
VALUES	('UNIT_MER_CLIBANARII',					'UNIT_KNIGHT');
	
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
		MandatoryObsoleteTech,
		PrereqCivic
		)
SELECT	'UNIT_MER_CLIBANARII',	-- UnitType
		'LOC_UNIT_MER_CLIBANARII_NAME',	-- Name
		'LOC_UNIT_MER_CLIBANARII_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_UNIT_MER_CLIBANARII', -- TraitType
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
		MandatoryObsoleteTech,
		'CIVIC_MILITARY_TRAINING' -- PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_KNIGHT';
		
INSERT INTO UnitUpgrades
		(Unit,			UpgradeUnit)
SELECT 	'UNIT_MER_CLIBANARII',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_KNIGHT';

INSERT INTO Units_XP2
		(UnitType,				ResourceCost)
SELECT 	'UNIT_MER_CLIBANARII',	10
FROM 	Units_XP2
WHERE	UnitType = 'UNIT_KNIGHT';
-----------------------------------------------
-- Types
-------------------------------------	

INSERT INTO Types	
		(Type,									Kind)
VALUES	('ABILITY_MER_CLIBANARII_FASTER_TERRAIN',		'KIND_ABILITY'),
		('ABILITY_MER_CLIBANARII_FULL_STRENGTH',		'KIND_ABILITY');		
	
-----------------------------------------------
-- TypeTags
-------------------------------------	

INSERT INTO TypeTags	
		(Type,									Tag)
VALUES	('ABILITY_MER_CLIBANARII_FASTER_TERRAIN',		'CLASS_MER_CLIBANARII'),
		('ABILITY_MER_CLIBANARII_FULL_STRENGTH',		'CLASS_MER_CLIBANARII');

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO	UnitAbilities
		(UnitAbilityType,								Name,											Description											)
VALUES	('ABILITY_MER_CLIBANARII_FASTER_TERRAIN',			'LOC_UNIT_MER_CLIBANARII_NAME',				'LOC_ABILITY_MER_CLIBANARII_CLEAR_MOVEMENT_DESC'	),
		('ABILITY_MER_CLIBANARII_FULL_STRENGTH',		'LOC_UNIT_MER_CLIBANARII_NAME',				'LOC_ABILITY_MER_CLIBANARII_FULL_STRENGTH_DESC'	);


INSERT INTO	UnitAbilityModifiers
		(UnitAbilityType,									ModifierId									)
VALUES	('ABILITY_MER_CLIBANARII_FASTER_TERRAIN',			'HEAVYCHARIOT_FASTER_CLEAR_TERRAIN'		),
		('ABILITY_MER_CLIBANARII_FULL_STRENGTH',			'MODIFIER_MER_CLIBANARII_FULL_STRENGTH'		);
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,												SubjectRequirementSetId				)
VALUES	('MODIFIER_MER_CLIBANARII_FULL_STRENGTH',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',						'OPPONENT_IS_FULL_HEALTH_REQUIREMENTS'	);
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,														Name,								Value		)
VALUES	('MODIFIER_MER_CLIBANARII_FULL_STRENGTH',							'Amount',						10		);
--------------------------------------------------------------------------------------------------------------------------
-- ModifierStrings
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,											Context,									Text													)
VALUES	('MODIFIER_MER_CLIBANARII_FULL_STRENGTH',				'Preview',									'LOC_MODIFIER_MER_CLIBANARII_FULL_STRENGTH_DESC'			);		
