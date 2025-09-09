-- RECIV_Bavaria_Text_Diplo
-- Author: JNR
--------------------------------------------------------------

-- All Languages
--------------------------------------------------------------
INSERT OR REPLACE INTO LocalizedText
		(Language,	Tag,																Text)
SELECT	Language,	TRIM(Tag,'LEADER_LUDWIG_ANY') || 'LEADER_LUDWIG_JNR_BAVARIA_ANY',	Text
FROM	LocalizedText
WHERE	Tag LIKE '%LEADER_LUDWIG_ANY';
--------------------------------------------------------------