-- RECIV_Bavaria_Text
-- Author: JNR
--------------------------------------------------------------

-- English
--------------------------------------------------------------
INSERT OR IGNORE INTO LocalizedText
		(Language,	Tag,																	Text)
VALUES	('en_US',	'LOC_CIVILIZATION_JNR_BAVARIA_NAME',									'Bavaria'),
		('en_US',	'LOC_CIVILIZATION_JNR_BAVARIA_DESCRIPTION',								'Bavarian Empire'),
		('en_US',	'LOC_CIVILIZATION_JNR_BAVARIA_ADJECTIVE',								'Bavarian'),
		
		('en_US',	'LOC_CIVINFO_JNR_BAVARIA_LOCATION',										'Europe'),
		('en_US',	'LOC_CIVINFO_JNR_BAVARIA_SIZE',											'Est. 29 thousand square miles (76 thousand square km) in 1840, with Palatinate'),
		('en_US',	'LOC_CIVINFO_JNR_BAVARIA_POPULATION',									'Est. 4.4 million in 1840, with Palatinate'),
		('en_US',	'LOC_CIVINFO_JNR_BAVARIA_CAPITAL',										'Regensburg until 1255, later Munich'),
		
		('en_US',	'LOC_TRAIT_CIVILIZATION_JNR_WEISS_BLAU_NAME',							'Heimat Weiß und Blau'),
		('en_US',	'LOC_TRAIT_CIVILIZATION_JNR_WEISS_BLAU_DESCRIPTION',					'+1 Appeal on all tiles. Tiles with charming Appeal receive +1 [ICON_FAITH] Faith with an improved Bonus resource, +1 [ICON_CULTURE] Culture with an improved Luxury resource, and +1 [ICON_SCIENCE] Science with an improved Strategic resources. These yields are doubled on tiles with breathtaking Appeal.'),
		
		('en_US',	'LOC_DISTRICT_JNR_DULT_NAME',											'Dult'),
		('en_US',	'LOC_DISTRICT_JNR_DULT_DESCRIPTION',									'A district unique to Bavaria. Replaces the Entertainment Complex district, and provides +2 [ICON_Amenities] Amenities, and cheaper to build. Also grants +1 [ICON_Amenities] Amenity for every world wonder in this city.[NEWLINE]Grants major adjacency bonuses to Theater Squares, Commercial Hubs, and Holy Sites.'),
		('en_US',	'LOC_DISTRICT_JNR_DULT_DESCRIPTION_UC',									'A district unique to Bavaria. Replaces the Entertainment Complex district, and provides +2 [ICON_Amenities] Amenities, and cheaper to build. Also grants +1 [ICON_Amenities] Amenity for every world wonder in this city.[NEWLINE]Grants additional standard adjacency bonus to Holy Sites.[NEWLINE]Receives additional standard adjacency bonus from Holy Sites and Farms.'),
		('en_US',	'LOC_DISTRICT_JNR_DULT_GOLD',											'+{1_num} [ICON_Gold] Gold from the adjacent Dult district.'),
		('en_US',	'LOC_DISTRICT_JNR_DULT_FAITH',											'+{1_num} [ICON_Faith] Faith from the adjacent Dult district.'),
		('en_US',	'LOC_DISTRICT_JNR_DULT_CULTURE',										'+{1_num} [ICON_Culture] Culture from the adjacent Dult district.'),

		('en_US',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_NAME',							'Gebirgsschütze'),
		('en_US',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_NAME',						'Landesdefension'),
		('en_US',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION',				'+4 [ICON_Strength] Combat Strength bonus on tiles with charming Appeal, increased to +8 [ICON_Strength] Combat Strength on tiles with breathtaking Appeal.'),
		('en_US',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION_CHARMING',		'+{1_Amount} Charming Appeal'),
		('en_US',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION_BREATHTAKING',	'+{1_Amount} Breathtaking Appeal'),
		('en_US',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_NAME',						'Honor Guard'),
		('en_US',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION',				'For every promotion earned grant +1 [ICON_CULTURE] Culture when stationed in a Dult district.'),
		('en_US',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION_GOV',			'For every promotion earned grant +1 [ICON_CULTURE] Culture when stationed in a Dult district or +1 [ICON_FAVOR] Favor when stationed in a Government Plaza.'),
		('en_US',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION_DIPLO',			'For every promotion earned grant +1 [ICON_CULTURE] Culture when stationed in a Dult district or +1 [ICON_FAVOR] Favor when stationed in a Government Plaza or Diplomatic Quarter.'),
		('en_US',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION',					'Bavarian unique Industrial Era unit that replaces the Ranger.[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION}[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION}'),
		('en_US',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION_GOV',				'Bavarian unique Industrial Era unit that replaces the Ranger.[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION}[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION_GOV}'),
		('en_US',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION_DIPLO',				'Bavarian unique Industrial Era unit that replaces the Ranger.[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION}[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION_DIPLO}');
--------------------------------------------------------------

-- German
--------------------------------------------------------------
INSERT OR IGNORE INTO LocalizedText
		(Language,	Tag,																	Text)
VALUES	('de_DE',	'LOC_CIVILIZATION_JNR_BAVARIA_NAME',									'Bayern|Bayern|Bayern|Bayerns|Bayern'),
		('de_DE',	'LOC_CIVILIZATION_JNR_BAVARIA_DESCRIPTION',								'Bayerisches Reich|Bayerische Reich|Bayerischen Reich|Bayerischen Reiches|Bayerische Reich'),
		('de_DE',	'LOC_CIVILIZATION_JNR_BAVARIA_ADJECTIVE',								'bayerisch|bayerischen|bayerische|bayerischer|bayerisches'),
		
		('de_DE',	'LOC_CIVINFO_JNR_BAVARIA_LOCATION',										'Europa'),
		('de_DE',	'LOC_CIVINFO_JNR_BAVARIA_SIZE',											'Etwa 76 Tausend Quadratkilometer im Jahr 1840, mit Rheinkreis (Pfalz)'),
		('de_DE',	'LOC_CIVINFO_JNR_BAVARIA_POPULATION',									'Etwa 4,4 Millionen im Jahr 1840, mit Rheinkreis (Pfalz)'),
		('de_DE',	'LOC_CIVINFO_JNR_BAVARIA_CAPITAL',										'Regensburg bis 1255, später München'),
		
		('de_DE',	'LOC_TRAIT_CIVILIZATION_JNR_WEISS_BLAU_NAME',							'Heimat Weiß und Blau'),
		('de_DE',	'LOC_TRAIT_CIVILIZATION_JNR_WEISS_BLAU_DESCRIPTION',					'+1 Anziehungskraft auf allen Geländefeldern. Bezaubernde Geländefelder erhalten +1 [ICON_FAITH] Glauben für verbesserte Bonus-Ressourcen, +1 [ICON_CULTURE] Kultur für verbesserte Luxusgüter, and +1 [ICON_SCIENCE] Wissenschaft für verbesserte strategische Ressourcen. Diese Erträge verdoppeln sich auf Atemberaubenden Geländefeldern.'),
		
		('de_DE',	'LOC_DISTRICT_JNR_DULT_NAME',											'Dult|Dult|Dult|Dult|Dult'),
		('de_DE',	'LOC_DISTRICT_JNR_DULT_DESCRIPTION',									'Ein ausschließlich Bayern zur Verfügung stehender Bezirk. Ersetzt den Unterhaltungskomplex-Bezirk, bringt +2 [ICON_Amenities] Annehmlichkeiten und ist günstiger im Bau.[NEWLINE]Zusätzliche +1 [ICON_Amenities] Annehmlichkeiten für jedes Weltwunder in dieser Stadt.[NEWLINE]Gewährt großen Nachbarschaftsbonus für  Theaterplatz-, Handelszentrum- und Heilige-Stätte-Bezirke.'),
--		('de_DE',	'LOC_DISTRICT_JNR_DULT_DESCRIPTION_UC',									'A district unique to Bavaria. Replaces the Entertainment Complex district, and provides +2 [ICON_Amenities] Amenities, and cheaper to build. Also grants +1 [ICON_Amenities] Amenity for every world wonder in this city.[NEWLINE]Grants additional standard adjacency bonus to Holy Sites.[NEWLINE]Receives additional standard adjacency bonus from Holy Sites and Farms.'),
		('de_DE',	'LOC_DISTRICT_JNR_DULT_GOLD',											'+{1_num} [ICON_Gold] Gold durch den angrenzenden Dult-Bezirk.'),
		('de_DE',	'LOC_DISTRICT_JNR_DULT_FAITH',											'+{1_num} [ICON_Faith] Glauben durch den angrenzenden Dult-Bezirk.'),
		('de_DE',	'LOC_DISTRICT_JNR_DULT_CULTURE',										'+{1_num} [ICON_Culture] Kultur durch den angrenzenden Dult-Bezirk.'),

		('de_DE',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_NAME',							'Gebirgsschütze'),
		('de_DE',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_NAME',						'Landesdefension'),
		('de_DE',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION',				'Erhält +4 [ICON_Strength] Kampfstärke-Bonus bonus auf Geländefeldern mit bezaubernder Anziehungskraft und +8 [ICON_Strength] auf Geländefeldern mit atemberaubender Anziehungskraft.'),
		('de_DE',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION_CHARMING',		'+{1_Amount} Bezaubernde Anziehungskraft'),
		('de_DE',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION_BREATHTAKING',	'+{1_Amount} Atemberaubende Anziehungskraft'),
		('de_DE',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_NAME',						'Ehrenformation'),
		('de_DE',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION',				'+1 [ICON_CULTURE] Kultur für jede verdiente Beförderung, wenn Einheit in einem Dult-Bezirk stationiert ist.'),
		('de_DE',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION_GOV',			'+1 [ICON_CULTURE] Kultur für jede verdiente Beförderung, wenn Einheit in einem Dult-Bezirk stationiert ist; oder +1 [ICON_FAVOR] diplomatische Gunst, wenn Einheit in einem Regierungsplatz-Bezirk stationiert ist.'),
		('de_DE',	'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION_DIPLO',			'+1 [ICON_CULTURE] Kultur für jede verdiente Beförderung, wenn Einheit in einem Dult-Bezirk stationiert ist; oder +1 [ICON_FAVOR] diplomatische Gunst, wenn Einheit in einem Regierungsplatz- oder Diplomatenviertel-Bezirk stationiert ist.'),
		('de_DE',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION',					'Bayerische Spezialeinheit des Industriezeitalters, die den Ranger ersetzt.[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION}[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION}'),
		('de_DE',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION_GOV',				'Bayerische Spezialeinheit des Industriezeitalters, die den Ranger ersetzt.[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION}[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION_GOV}'),
		('de_DE',	'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION_DIPLO',				'Bayerische Spezialeinheit des Industriezeitalters, die den Ranger ersetzt.[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION}[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION_DIPLO}');


UPDATE LocalizedText SET Gender='neuter:no_article',	Plurality=1	WHERE Language='de_DE'	AND Tag='LOC_CIVILIZATION_JNR_BAVARIA_NAME';
UPDATE LocalizedText SET Gender='neuter',				Plurality=1	WHERE Language='de_DE'	AND Tag='LOC_CIVILIZATION_JNR_BAVARIA_DESCRIPTION';
UPDATE LocalizedText SET Gender='feminine',				Plurality=1	WHERE Language='de_DE'	AND Tag='LOC_DISTRICT_JNR_DULT_NAME';
UPDATE LocalizedText SET Gender='masculine',			Plurality=1	WHERE Language='de_DE'	AND Tag='LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_NAME';
UPDATE LocalizedText SET Gender='feminine',				Plurality=1	WHERE Language='de_DE'	AND Tag='LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_NAME';
UPDATE LocalizedText SET Gender='feminine',				Plurality=1	WHERE Language='de_DE'	AND Tag='LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_NAME';
--------------------------------------------------------------

-- All
--------------------------------------------------------------
INSERT OR REPLACE INTO LocalizedText
		(Language,	Tag,									Text)
SELECT	Language,	'LOC_LEADER_LUDWIG_JNR_BAVARIA_NAME',	Text || ' ({LOC_CIVILIZATION_JNR_BAVARIA_NAME})'
FROM	LocalizedText
WHERE	Tag='LOC_LEADER_LUDWIG_NAME';

UPDATE LocalizedText SET Text=Text || ' ({LOC_CIVILIZATION_GERMANY_NAME})'	WHERE Tag='LOC_LEADER_LUDWIG_NAME';
--------------------------------------------------------------

-- Chinese (Simplified)

--------------------------------------------------------------
INSERT OR IGNORE INTO LocalizedText
        (Language,    Tag,                                                                                                    Text)
VALUES  ('zh_Hans_CN',    'LOC_CIVILIZATION_JNR_BAVARIA_NAME',                                                                    '巴伐利亚'),
        ('zh_Hans_CN',    'LOC_CIVILIZATION_JNR_BAVARIA_DESCRIPTION',                                                             '巴伐利亚帝国'),
        ('zh_Hans_CN',    'LOC_CIVILIZATION_JNR_BAVARIA_ADJECTIVE',                                                               '巴伐利亚的'),
        
        ('zh_Hans_CN',    'LOC_CIVINFO_JNR_BAVARIA_LOCATION',                                                                     '欧洲'),
        ('zh_Hans_CN',    'LOC_CIVINFO_JNR_BAVARIA_SIZE',                                                                         '1840年时（含普法尔茨）约2.9万平方英里（7.6万平方公里）'),
        ('zh_Hans_CN',    'LOC_CIVINFO_JNR_BAVARIA_POPULATION',                                                                   '1840年时（含普法尔茨）约440万人口'),
        ('zh_Hans_CN',    'LOC_CIVINFO_JNR_BAVARIA_CAPITAL',                                                                      '1255年前为雷根斯堡，后为慕尼黑'),
        
        ('zh_Hans_CN',    'LOC_TRAIT_CIVILIZATION_JNR_WEISS_BLAU_NAME',                                                           '蓝与白的故乡'),
        ('zh_Hans_CN',    'LOC_TRAIT_CIVILIZATION_JNR_WEISS_BLAU_DESCRIPTION',                                                    '修建所有时代的奇观 +10% [icon_production] 生产力。[newline][newline]若单元格魅力为“迷人的”，已改良的加成资源提供 +1 [ICON_Faith] 信仰值，已改良的奢侈品资源提供 +1 [ICON_Culture] 文化值，已改良的战略资源提供 +1 [ICON_Science] 科技值。若单元格魅力为“惊艳的”，这些加成翻倍。[newline][newline][ICON_BULLET]出生地关联：T3河流、T3草原山脉、T3平原山脉、-T2泛滥平原、-T4雨林'),
        
        ('zh_Hans_CN',    'LOC_DISTRICT_JNR_DULT_NAME',                                                                           '啤酒节广场'),
        ('zh_Hans_CN',    'LOC_DISTRICT_JNR_DULT_DESCRIPTION',                                                                    '巴伐利亚特色娱乐区域，造价更低，提供 +3 [ICON_Amenities] 宜居度。[newline]此城市中每有一座世界奇观，额外提供 +1 [ICON_Amenities] 宜居度。[NEWLINE]为剧院广场、商业中心和圣地提供大量相邻加成。'),
        ('zh_Hans_CN',    'LOC_DISTRICT_JNR_DULT_DESCRIPTION_UC',                                                                 '巴伐利亚特色区域，取代娱乐中心区域，提供+2 [ICON_Amenities] 宜居度，且建造费用更低。此城市中每有一座世界奇观，则额外+1 [ICON_Amenities] 宜居度。[NEWLINE]为圣地提供额外标准相邻加成。[NEWLINE]从圣地和农场获得额外标准相邻加成。'),
        ('zh_Hans_CN',    'LOC_DISTRICT_JNR_DULT_GOLD',                                                                           '与啤酒节广场相邻 +{1_num} [ICON_Gold] 金币'),
        ('zh_Hans_CN',    'LOC_DISTRICT_JNR_DULT_FAITH',                                                                          '与啤酒节广场相邻 +{1_num} [ICON_Faith] 信仰值'),
        ('zh_Hans_CN',    'LOC_DISTRICT_JNR_DULT_CULTURE',                                                                        '与啤酒节广场相邻 +{1_num} [ICON_Culture] 文化值'),

        ('zh_Hans_CN',    'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_NAME',                                                           '山地猎兵'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_NAME',                                                       '国土防卫'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION',                                                '在魅力为“迷人的”的单元格上战斗获得 +3 [ICON_Strength] 战斗力加成，在魅力为“惊艳的”的单元格上提升至 +6 [ICON_Strength] 战斗力。'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION_CHARMING',                                       '迷人吸引力：+{1_Amount}'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION_BREATHTAKING',                                   '惊艳吸引力：+{1_Amount}'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_NAME',                                                       '荣誉卫队'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION',                                                '每获得一次晋升，驻扎在啤酒节广场区域时提供+1 [ICON_CULTURE] 文化值。'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION_GOV',                                            '每获得一次晋升，驻扎在啤酒节广场区域时提供+1 [ICON_CULTURE] 文化值，驻扎在政府广场时提供+1 [ICON_FAVOR] 外交支持。'),
        ('zh_Hans_CN',    'LOC_ABILITY_JNR_GEBIRGSSCHUETZE_TRADITION_DESCRIPTION_DIPLO',                                          '每获得一次晋升，驻扎在啤酒节广场区域时提供+1 [ICON_CULTURE] 文化值，驻扎在政府广场或外交区时提供+1 [ICON_FAVOR] 外交支持。'),
        ('zh_Hans_CN',    'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION',                                                    '巴伐利亚特色工业时代侦查单位，替代游骑兵，解锁于民族主义。[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION}'),
        ('zh_Hans_CN',    'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION_GOV',                                                '巴伐利亚特色工业时代侦查单位，替代游骑兵，解锁于民族主义。[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION}'),
        ('zh_Hans_CN',    'LOC_UNIT_JNR_BAVARIAN_GEBIRGSSCHUETZE_DESCRIPTION_DIPLO',                                              '巴伐利亚特色工业时代侦查单位，替代游骑兵，解锁于民族主义。[NEWLINE]{LOC_ABILITY_JNR_GEBIRGSSCHUETZE_DEFENSION_DESCRIPTION}');
--------------------------------------------------------------