-- Leader XP1
-- remove traits
DELETE FROM TraitModifiers
      WHERE ModifierId IN ('GEDEMO_BISMARCK_STABLE_CULTURE', 'GEDEMO_BISMARCK_MILITARY_ACADEMY_CULTURE', 'GEDEMO_BISMARCK_CULTURE_GARRISON', 'GEDEMO_BISMARCK_CHEAPER_BUILDING_RUHR_VALLEY', 'GEDEMO_BISMARCK_BARRACKS_CULTURE', 'GEDEMO_BISMARCK_ARMORY_CULTURE');

-- BW unlock CH
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_GEDEMO_BISMARK', 'MODIFIER_VAN_BISMARK_BW_UNLOCK_CH');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODIFIER_VAN_BISMARK_BW_UNLOCK_CH', 'MODIFIER_PLAYER_ADJUST_DISTRICT_UNLOCK', 0, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODIFIER_VAN_BISMARK_BW_UNLOCK_CH', 'DistrictType', 'DISTRICT_COMMERCIAL_HUB'), 
('MODIFIER_VAN_BISMARK_BW_UNLOCK_CH', 'TechType', 'TECH_BRONZE_WORKING');

-- encampment +1 culture when adjacent to CH
INSERT INTO Adjacency_YieldChanges(ID, Description, YieldType, YieldChange, AdjacentDistrict) VALUES
    ('VAN_ENCAMPMENT_BISMARK_CH', 'LOC_VAN_ENCAMPMENT_BISMARK_CH', 'YIELD_CULTURE', 1, 'DISTRICT_COMMERCIAL_HUB');
INSERT INTO District_Adjacencies(DistrictType, YieldChangeId) VALUES
    ('DISTRICT_ENCAMPMENT', 'VAN_ENCAMPMENT_BISMARK_CH');
INSERT OR REPLACE INTO ExcludedAdjacencies(TraitType, YieldChangeId)
    SELECT TraitType, 'VAN_ENCAMPMENT_BISMARK_CH' FROM LeaderTraits WHERE LeaderType != 'LEADER_GEDEMO_BISMARK';

-- encampment +2 prod when adjacent to hansa
INSERT INTO Adjacency_YieldChanges(ID, Description, YieldType, YieldChange, AdjacentDistrict) VALUES
    ('VAN_ENCAMPMENT_BISMARK_HANSA', 'LOC_VAN_ENCAMPMENT_BISMARK_HANSA', 'YIELD_PRODUCTION', 2, 'DISTRICT_HANSA');
INSERT INTO District_Adjacencies(DistrictType, YieldChangeId) VALUES
    ('DISTRICT_ENCAMPMENT', 'VAN_ENCAMPMENT_BISMARK_HANSA');
INSERT OR REPLACE INTO ExcludedAdjacencies(TraitType, YieldChangeId)
    SELECT TraitType, 'VAN_ENCAMPMENT_BISMARK_HANSA' FROM LeaderTraits WHERE LeaderType != 'LEADER_GEDEMO_BISMARK';
