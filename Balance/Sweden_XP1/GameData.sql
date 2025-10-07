-- uu XP1 no GGP
DELETE FROM UnitAbilityModifiers
      WHERE ModifierId = 'GARDE_GREAT_GENERAL_POINTS' AND
            UnitAbilityType = 'ABILITY_MER_DRABANT';

-- uu cost to 360, combat to 66
UPDATE Units SET Cost=360, Combat=66 WHERE UnitType = 'UNIT_MER_DRABANT';