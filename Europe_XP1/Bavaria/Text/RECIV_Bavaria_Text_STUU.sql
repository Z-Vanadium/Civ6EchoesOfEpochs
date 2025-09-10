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

-- Chinese

--------------------------------------------------------------
INSERT OR IGNORE INTO LocalizedText
        (Language,    Tag,                                                                                            Text)
VALUES  ('zh_Hans_CN',    'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_NAME',                                                    '帕本海默骑兵'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_PAPPENHEIMER_MAGDEBURG_NAME',                                                '马格德堡的婚礼'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_PAPPENHEIMER_MAGDEBURG_DESCRIPTION',                                        '掠夺仅消耗1点[ICON_Movement]移动力。'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE_NAME',                                        '天主教联盟'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE_DESCRIPTION',                                    '正在进行的敌对紧急事件期间+5 [ICON_Strength] 战斗力。'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE_DESCRIPTION_COMBAT',                            '+{Amount} 来自正在进行的敌对紧急事件'),
        ('zh_Hans_CN',    'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_DESCRIPTION',                                            '文艺复兴时代巴伐利亚特色单位，取代胸甲骑兵。[NEWLINE]{LOC_ABILITY_JNR_PAPPENHEIMER_MAGDEBURG_DESCRIPTION}'),
        ('zh_Hans_CN',    'LOC_UNIT_JNR_BAVARIAN_PAPPENHEIMER_DESCRIPTION_XP1',                                        '文艺复兴时代巴伐利亚特色单位，取代胸甲骑兵。[NEWLINE]{LOC_ABILITY_JNR_PAPPENHEIMER_MAGDEBURG_DESCRIPTION}[NEWLINE]{LOC_ABILITY_JNR_PAPPENHEIMER_CATHOLIC_LEAGUE_DESCRIPTION}');
--------------------------------------------------------------