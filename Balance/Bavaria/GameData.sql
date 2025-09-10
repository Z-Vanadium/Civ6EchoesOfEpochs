-- Civilization

-- extra appeal removed
DELETE FROM TraitModifiers
      WHERE TraitType = 'TRAIT_CIVILIZATION_JNR_WEISS_BLAU' AND
            ModifierId = 'TRAIT_JNR_WEISS_BLAU_APPEAL';

-- +10% prod for all wonders
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_JNR_WEISS_BLAU', 'VAN_BAVARIA_WONDER_PROD_BONUS');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('VAN_BAVARIA_WONDER_PROD_BONUS', 'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_ERA_PRODUCTION', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('VAN_BAVARIA_WONDER_PROD_BONUS', 'Amount', '10'), 
('VAN_BAVARIA_WONDER_PROD_BONUS', 'EndEra', 'ERA_INFORMATION'), 
('VAN_BAVARIA_WONDER_PROD_BONUS', 'IsWonder', '1'), 
('VAN_BAVARIA_WONDER_PROD_BONUS', 'StartEra', 'ERA_ANCIENT');

-- no thundra or desert mountain bias
DELETE FROM StartBiasTerrains WHERE TerrainType IN ('TERRAIN_DESERT_MOUNTAIN', 'TERRAIN_TUNDRA_MOUNTAIN') AND CivilizationType = 'CIVILIZATION_JNR_BAVARIA';

-- -t2 floodpains and -t4 jungle
INSERT INTO StartBiasNegatives (Tier, ResourceType, FeatureType, TerrainType, CivilizationType)
    VALUES (2, NULL, 'FEATURE_FLOODPLAINS', NULL, 'CIVILIZATION_JNR_BAVARIA'),
            (2, NULL, 'FEATURE_FLOODPLAINS_PLAINS', NULL, 'CIVILIZATION_JNR_BAVARIA'),
            (4, NULL, 'FEATURE_JUNGLE', NULL, 'CIVILIZATION_JNR_BAVARIA'),
            (2, NULL, 'FEATURE_FLOODPLAINS_GRASSLAND', NULL, 'CIVILIZATION_JNR_BAVARIA');

-- uu cs bonus to +3/+6
UPDATE ModifierArguments SET Value = '3'  WHERE ModifierId = 'GEBIRGSSCHUETZE_JNR_COMBAT_CHARMING' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = '6'  WHERE ModifierId = 'GEBIRGSSCHUETZE_JNR_COMBAT_BREATHTAKING' AND Name = 'Amount';

-- uu no culture and other bonus
DELETE FROM TypeTags
      WHERE Type = 'ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION' AND
            Tag = 'CLASS_JNR_GEBIRGSSCHUETZE';


-- uu cs to 60/62
UPDATE Units SET Combat=60, RangedCombat=62 WHERE UnitType='UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE';

-- ud base amentity to +3
UPDATE Districts SET Entertainment=3, Cost=30 WHERE DistrictType = 'DISTRICT_JNR_DULT';
