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
