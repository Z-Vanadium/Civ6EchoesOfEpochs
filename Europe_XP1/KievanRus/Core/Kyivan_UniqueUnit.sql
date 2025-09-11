
--------------------------------------------------------------
	
INSERT INTO Types
		(Type,									Kind			)
VALUES	('UNIT_MER_KYIV_DRUZHINA',							'KIND_UNIT'		);

INSERT INTO Tags
		(Tag,									Vocabulary		)
VALUES	('CLASS_MER_KYIV_DRUZHINA',					'ABILITY_CLASS'	);

INSERT INTO TypeTags
		(Type,									Tag)
SELECT 	'UNIT_MER_KYIV_DRUZHINA',							Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_MAN_AT_ARMS';

INSERT INTO TypeTags
		(Type,									Tag						)
VALUES	('UNIT_MER_KYIV_DRUZHINA',					'CLASS_MER_KYIV_DRUZHINA'	);

INSERT INTO UnitAiInfos
		(UnitType,								AiType)
SELECT 	'UNIT_MER_KYIV_DRUZHINA',							AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_MAN_AT_ARMS';


INSERT INTO UnitReplaces
		(CivUniqueUnitType,						ReplacesUnitType)
VALUES	('UNIT_MER_KYIV_DRUZHINA',					'UNIT_MAN_AT_ARMS');
	
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
SELECT	'UNIT_MER_KYIV_DRUZHINA',	-- UnitType
		'LOC_UNIT_MER_KYIV_DRUZHINA_NAME',	-- Name
		'LOC_UNIT_MER_KYIV_DRUZHINA_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_UNIT_MER_KYIV_DRUZHINA', -- TraitType
		BaseMoves,
		Cost,
		Maintenance,
		PurchaseYield,
		AdvisorType,
		48,
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
FROM	Units
WHERE	UnitType = 'UNIT_MAN_AT_ARMS';
		
INSERT INTO UnitUpgrades
		(Unit,			UpgradeUnit)
SELECT 	'UNIT_MER_KYIV_DRUZHINA',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_MAN_AT_ARMS';

INSERT INTO Units_XP2	
		(UnitType,					ResourceCost)
VALUES	('UNIT_MER_KYIV_DRUZHINA',	10);	

------------------------------
-----------------------------------------------
-- Types
-------------------------------------	

INSERT INTO Types	
		(Type,									Kind)
VALUES	('ABILITY_MER_KYIV_DRUZHINA_ADJACENT',		'KIND_ABILITY'),
		('ABILITY_MER_KYIV_DRUZHINA_MOVEMENT',		'KIND_ABILITY');		
	
-----------------------------------------------
-- TypeTags
-------------------------------------	

INSERT INTO TypeTags	
		(Type,									Tag)
VALUES	('ABILITY_MER_KYIV_DRUZHINA_ADJACENT',		'CLASS_MER_KYIV_DRUZHINA'),
		('ABILITY_MER_KYIV_DRUZHINA_MOVEMENT',		'CLASS_MER_KYIV_DRUZHINA');

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO	UnitAbilities
		(UnitAbilityType,								Name,										Description											)
VALUES	('ABILITY_MER_KYIV_DRUZHINA_ADJACENT',			'LOC_UNIT_MER_KYIV_DRUZHINA_ABILITY',		'LOC_MODIFIER_MER_KYIV_DRUZHINA_ADJACENT_DESC'	),
		('ABILITY_MER_KYIV_DRUZHINA_MOVEMENT',			'LOC_UNIT_MER_KYIV_DRUZHINA_ABILITY',		'LOC_MODIFIER_MER_KYIV_DRUZHINA_MOVEMENT_DESC'	);


INSERT INTO	UnitAbilityModifiers
		(UnitAbilityType,									ModifierId									)
VALUES	('ABILITY_MER_KYIV_DRUZHINA_ADJACENT',				'MODIFIER_MER_KYIV_DRUZHINA_ADJACENT'		),
		('ABILITY_MER_KYIV_DRUZHINA_MOVEMENT',				'MODIFIER_MER_KYIV_DRUZHINA_MOVEMENT'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,								SubjectRequirementSetId				)
VALUES	('MODIFIER_MER_KYIV_DRUZHINA_ADJACENT_ATTACH',				'MODIFIER_SINGLE_UNIT_ATTACH_MODIFIER',	'MER_KYIV_DRUZHINA_ADJACENT'	),
		('MODIFIER_MER_KYIV_DRUZHINA_ADJACENT',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',	null	),
		('MODIFIER_MER_KYIV_DRUZHINA_MOVEMENT',				'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',	'MER_KYIV_DRUZHINA_ADJACENT');
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,															Name,					Value		)
VALUES	('MODIFIER_MER_KYIV_DRUZHINA_ADJACENT',									'ModifierId',			'MODIFIER_MER_KYIV_DRUZHINA_ADJACENT'			),
		('MODIFIER_MER_KYIV_DRUZHINA_ADJACENT',									'Amount',				5			),
		('MODIFIER_MER_KYIV_DRUZHINA_MOVEMENT',									'Amount',				1			);

--------------------------------------------------------------------------------------------------------------------------
-- ModifierStrings
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,										Context,										Text													)
VALUES	('MODIFIER_MER_KYIV_DRUZHINA_ADJACENT',				'Preview',										'LOC_MODIFIER_MER_KYIV_DRUZHINA_ADJACENT_DESC'			),	
		('MODIFIER_MER_KYIV_DRUZHINA_MOVEMENT',				'Preview',										'LOC_MODIFIER_MER_KYIV_DRUZHINA_MOVEMENT_DESC'			);		
--------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
--------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------
-- Requirements
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Requirements 			
		(RequirementId,											RequirementType,											Inverse )
VALUES	('MER_KYIV_DRUZHINA_ADJACENT_REQ',						'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES',			0	);
-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType				)
VALUES	('MER_KYIV_DRUZHINA_ADJACENT',		'REQUIREMENTSET_TEST_ALL'		);
--------------------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('MER_KYIV_DRUZHINA_ADJACENT',			'MER_KYIV_DRUZHINA_ADJACENT_REQ');		
	
--------------------------------------------------------------------------------------------------------------------------
-- RequirementArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
            (RequirementId,						  Name,					Value)
VALUES      ('MER_KYIV_DRUZHINA_ADJACENT_REQ',	 'UnitType',			'UNIT_MER_KYIV_DRUZHINA'),
			('MER_KYIV_DRUZHINA_ADJACENT_REQ',	 'MinRange',			1),
			('MER_KYIV_DRUZHINA_ADJACENT_REQ',	 'MAxRange',			1);		

