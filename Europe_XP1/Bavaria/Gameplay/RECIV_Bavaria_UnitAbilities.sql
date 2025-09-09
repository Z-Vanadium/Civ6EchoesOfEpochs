-- RECIV_Bavaria_UnitAbilities
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,											Kind)
VALUES	('ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION',		'KIND_ABILITY'),
		('ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION',		'KIND_ABILITY'),
		('ABILITY_JNR_PAPPENHEIMER_MAGDEBURG',			'KIND_ABILITY'),
		('ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE',	'KIND_ABILITY');
--------------------------------------------------------------

-- Tags
--------------------------------------------------------------
INSERT OR IGNORE INTO Tags
		(Tag,							Vocabulary)
VALUES	('CLASS_JNR_GEBIRGSSCHUETZE',	'ABILITY_CLASS'),
		('CLASS_JNR_PAPPENHEIMER',		'ABILITY_CLASS');
--------------------------------------------------------------

-- TypeTags
--------------------------------------------------------------
INSERT OR IGNORE INTO TypeTags
		(Type,											Tag)
VALUES	('ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION',		'CLASS_JNR_GEBIRGSSCHUETZE'),
		('ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION',		'CLASS_JNR_GEBIRGSSCHUETZE'),
		('UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE',			'CLASS_JNR_GEBIRGSSCHUETZE'),
		('ABILITY_JNR_PAPPENHEIMER_MAGDEBURG',			'CLASS_JNR_PAPPENHEIMER'),
		('ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE',	'CLASS_JNR_PAPPENHEIMER');
--------------------------------------------------------------

-- UnitAbilities
--------------------------------------------------------------
INSERT OR IGNORE INTO UnitAbilities
		(UnitAbilityType,								Inactive,	Name,													Description)
VALUES	('ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION',		0,			'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_NAME',		'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION'),
		('ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION',		0,			'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_NAME',		'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION'),
		('ABILITY_JNR_PAPPENHEIMER_MAGDEBURG',			0,			'LOC_ABILITY_JNR_PAPPENHEIMER_MAGDEBURG_NAME',			'LOC_ABILITY_JNR_PAPPENHEIMER_MAGDEBURG_DESCRIPTION'),
		('ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE',	1,			'LOC_ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE_NAME',	'LOC_ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE_DESCRIPTION');

UPDATE UnitAbilities SET Description='LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION_GOV'	WHERE UnitAbilityType='ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION'		AND EXISTS (SELECT * FROM GameCapabilities WHERE GameCapability='CAPABILITY_WORLD_CONGRESS');
UPDATE UnitAbilities SET Description='LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION_DIPLO'	WHERE UnitAbilityType='ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION'		AND EXISTS (SELECT * FROM GameCapabilities WHERE GameCapability='CAPABILITY_WORLD_CONGRESS') AND EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_DIPLOMATIC_QUARTER');
--------------------------------------------------------------

-- Requirements
--------------------------------------------------------------
INSERT OR IGNORE INTO Requirements
		(RequirementId,							RequirementType)
VALUES	('REQUIRES_CHARMING_APPEAL_EXACT_JNR',	'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN'),
		('REQUIRES_PLOT_BREATHTAKING_APPEAL',	'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN');
--------------------------------------------------------------

-- RequirementArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,							Name,				Value)
VALUES	('REQUIRES_CHARMING_APPEAL_EXACT_JNR',	'MinimumAppeal',	2),	
		('REQUIRES_CHARMING_APPEAL_EXACT_JNR',	'MaximumAppeal',	3),
		('REQUIRES_PLOT_BREATHTAKING_APPEAL',	'MinimumAppeal',	4);
--------------------------------------------------------------

-- RequirementSets
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('PLOT_CHARMING_APPEAL_EXACT_JNR',	'REQUIREMENTSET_TEST_ALL'),
		('PLOT_BREATHTAKING_APPEAL',		'REQUIREMENTSET_TEST_ALL');
--------------------------------------------------------------

-- RequirementSetRequirements
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('PLOT_CHARMING_APPEAL_EXACT_JNR',	'REQUIRES_CHARMING_APPEAL_EXACT_JNR'),
		('PLOT_BREATHTAKING_APPEAL',		'REQUIRES_PLOT_BREATHTAKING_APPEAL');
--------------------------------------------------------------

-- Modifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO Modifiers
		(ModifierId,								ModifierType,										OwnerRequirementSetId)
VALUES	('GEBIRGSSCHUETZE_JNR_COMBAT_CHARMING',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',				'PLOT_CHARMING_APPEAL_EXACT_JNR'),
		('GEBIRGSSCHUETZE_JNR_COMBAT_BREATHTAKING',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',				'PLOT_BREATHTAKING_APPEAL'),
		('PAPPENHEIMER_JNR_ADVANCED_PILLAGING',		'MODIFIER_PLAYER_UNIT_ADJUST_ADVANCED_PILLAGING',	NULL),
		('PAPPENHEIMER_JNR_EMERGENCY_STRENGTH',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',				NULL);
--------------------------------------------------------------

-- ModifierArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,								Name,					Value)
VALUES	('GEBIRGSSCHUETZE_JNR_COMBAT_CHARMING',		'Amount',				4),
		('GEBIRGSSCHUETZE_JNR_COMBAT_BREATHTAKING',	'Amount',				8),
		('PAPPENHEIMER_JNR_ADVANCED_PILLAGING',		'UseAdvancedPillaging',	1),
		('PAPPENHEIMER_JNR_EMERGENCY_STRENGTH',		'Amount',				5);
--------------------------------------------------------------

-- ModifierStrings
--------------------------------------------------------------
INSERT OR IGNORE INTO ModifierStrings
		(ModifierId,								Context,	Text)
VALUES	('GEBIRGSSCHUETZE_JNR_COMBAT_CHARMING',		'Preview',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION_CHARMING'),
		('GEBIRGSSCHUETZE_JNR_COMBAT_BREATHTAKING',	'Preview',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION_BREATHTAKING'),
		('PAPPENHEIMER_JNR_EMERGENCY_STRENGTH',		'Preview',	'LOC_ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE_DESCRIPTION_COMBAT');
--------------------------------------------------------------

-- UnitAbilityModifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO UnitAbilityModifiers
		(UnitAbilityType,								ModifierId)
VALUES	('ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION',		'GEBIRGSSCHUETZE_JNR_COMBAT_CHARMING'),
		('ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION',		'GEBIRGSSCHUETZE_JNR_COMBAT_BREATHTAKING'),
		('ABILITY_JNR_PAPPENHEIMER_MAGDEBURG',			'PAPPENHEIMER_JNR_ADVANCED_PILLAGING'),
		('ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE',	'PAPPENHEIMER_JNR_EMERGENCY_STRENGTH');
--------------------------------------------------------------