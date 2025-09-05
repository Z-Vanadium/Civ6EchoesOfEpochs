--==========================================================================================================================
-- TRAIT
--==========================================================================================================================
-- Types
-------------------------------------
INSERT INTO Types
		(Type,								Kind)
VALUES	('TRAIT_LEADER_LEU_ORELIE',		'KIND_TRAIT');

-------------------------------------
-- LeaderTraits
-------------------------------------
INSERT INTO LeaderTraits	
		(LeaderType,						TraitType)
VALUES	('LEADER_LEU_ORELIE',		'TRAIT_LEADER_LEU_ORELIE');		

-------------------------------------
-- Traits			
-------------------------------------
INSERT INTO Traits				
		(TraitType,								Name,										Description)
VALUES	('TRAIT_LEADER_LEU_ORELIE',				'LOC_TRAIT_LEADER_LEU_ORELIE_NAME',			'LOC_TRAIT_LEADER_LEU_ORELIE_DESCRIPTION');		
		
-------------------------------------
-- TraitModifiers		
-------------------------------------
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_LEU_ORELIE',		'LEU_ORELIE_FAVOR_OPEN_BORDERS_GIFT'),
		('TRAIT_LEADER_MAJOR_CIV',		'LEU_ORELIE_FAVOR_OPEN_BORDERS_RECEIVE');

-- We are also adding a modifier to the WC
INSERT INTO ResolutionEffects
		(ResolutionEffectId, 	ResolutionType,					WhichEffect,		ModifierId)
VALUES	(210,					'WC_RES_BORDER_CONTROL',		1,					'LEU_ORELIE_APPEAL'),
		(215,					'WC_RES_BORDER_CONTROL',		1,					'LEU_ORELIE_APPEAL_GOVERNOR'),
		(220,					'WC_RES_BORDER_CONTROL',		2,					'LEU_ORELIE_APPEAL'),
		(225,					'WC_RES_BORDER_CONTROL',		2,					'LEU_ORELIE_APPEAL_GOVERNOR');

--INSERT INTO ResolutionEffects
--		(ResolutionType,		WhichEffect,		ModifierId)
--SELECT	ResolutionType,			1,					'LEU_ORELIE_APPEAL'
--FROM	Resolutions WHERE TargetKind = 'PLAYER';

--INSERT INTO ResolutionEffects
--		(ResolutionType,		WhichEffect,		ModifierId)
--SELECT	ResolutionType,			2,					'LEU_ORELIE_APPEAL'
--FROM	Resolutions WHERE TargetKind = 'PLAYER';

--INSERT INTO ResolutionEffects
--		(ResolutionType,		WhichEffect,		ModifierId)
--SELECT	ResolutionType,			1,					'LEU_ORELIE_APPEAL_GOVERNOR'
--FROM	Resolutions WHERE TargetKind = 'PLAYER';

--INSERT INTO ResolutionEffects
--		(ResolutionType,		WhichEffect,		ModifierId)
--SELECT	ResolutionType,			2,		'LEU_ORELIE_APPEAL_GOVERNOR'
--FROM	Resolutions WHERE TargetKind = 'PLAYER';

-- We are also adding a modifier to Emergencies
INSERT INTO EmergencyBuffs
		(ModifierID,					EmergencyType,		Description)
SELECT	'LEU_ORELIE_APPEAL',			EmergencyType,		'LOC_EMEGENCY_LEU_ORELIE_BUFF_DESCRIPTION'
FROM	Emergencies_XP2 WHERE EmergencyType NOT null;
 
INSERT INTO EmergencyBuffs
		(ModifierID,					EmergencyType,		Description)
SELECT	'LEU_ORELIE_APPEAL_GOVERNOR',	EmergencyType,		null
FROM	Emergencies_XP2 WHERE EmergencyType NOT null;
 
-------------------------------------
-- UnitAbilities
-------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('ABILITY_LEU_ORELIE_FOREIGN_TERRITORY',	'KIND_ABILITY');

INSERT INTO UnitAbilities
		(UnitAbilityType,							Name,												Description,												Inactive)
VALUES	('ABILITY_LEU_ORELIE_FOREIGN_TERRITORY',	'LOC_ABILITY_LEU_ORELIE_FOREIGN_TERRITORY_NAME',	'LOC_ABILITY_LEU_ORELIE_FOREIGN_TERRITORY_DESCRIPTION',		1);

INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,							ModifierId)
VALUES	('ABILITY_LEU_ORELIE_FOREIGN_TERRITORY',	'LEU_ORELIE_FOREIGN_TERRITORY_UNITS_MOD');

INSERT INTO TypeTags
		(Type,										Tag)
VALUES	('ABILITY_LEU_ORELIE_FOREIGN_TERRITORY',	'CLASS_RECON'),
		('ABILITY_LEU_ORELIE_FOREIGN_TERRITORY',	'CLASS_LIGHT_CAVALRY'),
		('ABILITY_LEU_ORELIE_FOREIGN_TERRITORY',	'CLASS_HEAVY_CAVALRY');
		

-------------------------------------	
-- Modifiers
-------------------------------------	
INSERT INTO Modifiers	
		(ModifierId,									ModifierType,													OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	('LEU_ORELIE_FOREIGN_TERRITORY_UNITS',			'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',							null,						null),
		--Arguments: AbilityType

		('LEU_ORELIE_FOREIGN_TERRITORY_UNITS_MOD',		'MODIFIER_PLAYER_UNIT_ADJUST_ENTER_FOREIGN_LANDS',				null,						null),
		--Arguments: Enter(bool)

		('LEU_ORELIE_FAVOR_OPEN_BORDERS_GIFT',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							null,						'PLAYER_OPEN_BORDERS'),
		--Arguments: ModifierId

		('LEU_ORELIE_FAVOR_OPEN_BORDERS_GIFT_MOD',		'MODIFIER_PLAYER_ADJUST_EXTRA_FAVOR_PER_TURN',					null,						null),
		--Arguments: Amount

		('LEU_ORELIE_FAVOR_OPEN_BORDERS_RECEIVE',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							null,						'PLAYER_OPEN_BORDERS'),
		--Arguments: ModifierId

		('LEU_ORELIE_FAVOR_OPEN_BORDERS_RECEIVE_MOD',	'MODIFIER_PLAYER_ADJUST_EXTRA_FAVOR_PER_TURN',					null,						'LEU_ORELIE_TRAIT_CHECK'),
		--Arguments: Amount

		('LEU_ORELIE_APPEAL',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_APPEAL',					null,	null),
		--Arguments: Amount
	
		('LEU_ORELIE_APPEAL_GOVERNOR',					'MODIFIER_PLAYER_CITIES_ADJUST_CITY_APPEAL',					'LEU_ORELIE_TRAIT_CHECK',	'CITY_HAS_GOVERNOR');
		--Arguments: Amount
		
INSERT INTO ModifierStrings
		(ModifierId,									Context,			Text)
VALUES	('LEU_ORELIE_FOREIGN_TERRITORY_UNITS_MOD',		'Preview',			'LOC_ABILITY_LEU_ORELIE_FOREIGN_TERRITORY_DESCRIPTION');
		
-------------------------------------
-- DynamicModifiers
-------------------------------------

-------------------------------------	
-- ModifierArguments		
-------------------------------------		
INSERT INTO ModifierArguments		
		(ModifierId,									Name,						Value)
VALUES	('LEU_ORELIE_FOREIGN_TERRITORY_UNITS',			'AbilityType',				'ABILITY_LEU_ORELIE_FOREIGN_TERRITORY'),
		('LEU_ORELIE_FOREIGN_TERRITORY_UNITS_MOD',		'Enter',					1),
		--
		('LEU_ORELIE_FAVOR_OPEN_BORDERS_GIFT',			'ModifierId',				'LEU_ORELIE_FAVOR_OPEN_BORDERS_GIFT_MOD'),
		('LEU_ORELIE_FAVOR_OPEN_BORDERS_GIFT_MOD',		'Amount',					1),
		--
		('LEU_ORELIE_FAVOR_OPEN_BORDERS_RECEIVE',		'ModifierId',				'LEU_ORELIE_FAVOR_OPEN_BORDERS_RECEIVE_MOD'),
		('LEU_ORELIE_FAVOR_OPEN_BORDERS_RECEIVE_MOD',	'Amount',					1),
		--
		('LEU_ORELIE_APPEAL',							'Amount',					1),
		('LEU_ORELIE_APPEAL_GOVERNOR',					'Amount',					1);

-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('LEU_ORELIE_IS_RECON_OR_MOUNTED',				'REQUIREMENTSET_TEST_ANY'),
		('LEU_ORELIE_TRAIT_CHECK',						'REQUIREMENTSET_TEST_ALL'),
		('LEU_ORELIE_OPEN_BORDERS',						'REQUIREMENTSET_TEST_ALL');

-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('LEU_ORELIE_IS_RECON_OR_MOUNTED',				'UNIT_IS_LIGHT_CAVALRY'),
		('LEU_ORELIE_IS_RECON_OR_MOUNTED',				'UNIT_IS_HEAVY_CAVALRY'),
		('LEU_ORELIE_IS_RECON_OR_MOUNTED',				'RECON_UNITS'),
		--
		('LEU_ORELIE_OPEN_BORDERS',						'REQUIRES_LEU_ORELIE_LEADER_TRAIT'),
		('LEU_ORELIE_OPEN_BORDERS',						'REQUIRES_PLAYER_OPEN_BORDERS'),
		--
		('LEU_ORELIE_TRAIT_CHECK',						'REQUIRES_LEU_ORELIE_LEADER_TRAIT');
		
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId,								RequirementType,											Inverse)
VALUES	('REQUIRES_LEU_ORELIE_LEADER_TRAIT',		'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',		0);	
		--Arguments: TraitType

-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,								Name,				Value)
VALUES	('REQUIRES_LEU_ORELIE_LEADER_TRAIT',		'LeaderType',		'LEADER_LEU_ORELIE');
		
--==========================================================================================================================
--==========================================================================================================================
-- Compatibility Triggers
-------------------------------------

--==========================================================================================================================
--==========================================================================================================================
