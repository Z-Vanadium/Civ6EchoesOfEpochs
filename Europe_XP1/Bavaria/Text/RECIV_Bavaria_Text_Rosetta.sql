-- RECIV_Bavaria_Text_Rosetta
-- Author: JNR
--------------------------------------------------------------

-- All Languages
--------------------------------------------------------------
INSERT OR REPLACE INTO LocalizedText
		(Language,	Tag,																Text)
SELECT	Language,	TRIM(Tag,'XSCX_LEADER_LUDWIG') || 'XSCX_CIVILIZATION_JNR_BAVARIA',	Text
FROM	LocalizedText
WHERE	Tag LIKE '%XSCX_LEADER_LUDWIG';
--------------------------------------------------------------