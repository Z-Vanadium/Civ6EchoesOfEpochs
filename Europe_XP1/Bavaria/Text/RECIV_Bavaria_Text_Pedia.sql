-- RECIV_Bavaria_Text_Pedia
-- Author: JNR
--------------------------------------------------------------

-- All Languages
--------------------------------------------------------------
INSERT OR REPLACE INTO LocalizedText
		(Language,	Tag,																									Text)
SELECT	Language,	'LOC_PEDIA_LEADERS_PAGE_LEADER_LUDWIG_JNR_BAVARIA' || TRIM(Tag,'LOC_PEDIA_LEADERS_PAGE_LEADER_LUDWIG'),	Text
FROM	LocalizedText
WHERE	Tag LIKE 'LOC_PEDIA_LEADERS_PAGE_LEADER_LUDWIG%';

UPDATE LocalizedText SET Text=Text || ' ({LOC_CIVILIZATION_GERMANY_NAME})'		WHERE Tag='LOC_PEDIA_LEADERS_PAGE_LEADER_LUDWIG_TITLE';
UPDATE LocalizedText SET Text=Text || ' ({LOC_CIVILIZATION_JNR_BAVARIA_NAME})'	WHERE Tag='LOC_PEDIA_LEADERS_PAGE_LEADER_LUDWIG_JNR_BAVARIA_TITLE';
--------------------------------------------------------------