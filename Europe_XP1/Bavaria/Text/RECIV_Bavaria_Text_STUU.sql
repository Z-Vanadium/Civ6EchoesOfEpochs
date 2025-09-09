-- RECIV_Bavaria_Text_STUU
-- Author: JNR
--------------------------------------------------------------

-- English
--------------------------------------------------------------
INSERT OR IGNORE INTO LocalizedText
		(Language,	Tag,																Text)
VALUES	('en_US',	'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_NAME',							'Pappenheimer'),
		('en_US',	'LOC_ABILITY_JNR_PAPPENHEIMER_MAGDEBURG_NAME',						'Magdeburg''s Wedding'),
		('en_US',	'LOC_ABILITY_JNR_PAPPENHEIMER_MAGDEBURG_DESCRIPTION',				'Pillaging costs only 1 [ICON_Movement] Movement point.'),
		('en_US',	'LOC_ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE_NAME',				'Catholic League'),
		('en_US',	'LOC_ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE_DESCRIPTION',			'+5 [ICON_Strength] Combat Strength during an ongoing hostile emergency.'),
		('en_US',	'LOC_ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE_DESCRIPTION_COMBAT',	'+{Amount} from ongoing hostile emergency'),
		('en_US',	'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_DESCRIPTION',					'Bavarian unique Renaissance Era unit that replaces the Cuirassier.[NEWLINE]{LOC_ABILITY_JNR_PAPPENHEIMER_MAGDEBURG_DESCRIPTION}'),
		('en_US',	'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_DESCRIPTION_XP1',				'Bavarian unique Renaissance Era unit that replaces the Cuirassier.[NEWLINE]{LOC_ABILITY_JNR_PAPPENHEIMER_MAGDEBURG_DESCRIPTION}[NEWLINE]{LOC_ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE_DESCRIPTION}');
--------------------------------------------------------------