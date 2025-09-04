--==========================================================================================================================
-- ICONS
--==========================================================================================================================
-- IconTextureAtlases
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO IconTextureAtlases	
		(Name,												IconSize,	IconsPerRow,	IconsPerColumn,		Filename)
VALUES  ('ICON_ATLAS_KARL_XII',						256,	 	1,				1,					'KARL_XII_256.dds'),
		('ICON_ATLAS_KARL_XII',						80,	 		1,				1,					'KARL_XII_80.dds'),
		('ICON_ATLAS_KARL_XII',						64,	 		1,				1,					'KARL_XII_64.dds'),
		('ICON_ATLAS_KARL_XII',						55,	 		1,				1,					'KARL_XII_55.dds'),
		('ICON_ATLAS_KARL_XII',						50,	 		1,				1,					'KARL_XII_50.dds'),
		('ICON_ATLAS_KARL_XII',						48,	 		1,				1,					'KARL_XII_48.dds'),
		('ICON_ATLAS_KARL_XII',						45,	 		1,				1,					'KARL_XII_45.dds'),
		('ICON_ATLAS_KARL_XII',						32,	 		1,				1,					'KARL_XII_32.dds'),
		('ICON_ATLAS_MER_DRABANT',					256,	 	1,				1,					'DRABANT_256.dds'),
		('ICON_ATLAS_MER_DRABANT',					80,	 		1,				1,					'DRABANT_80.dds'),
		('ICON_ATLAS_MER_DRABANT',					50,	 		1,				1,					'DRABANT_50.dds'),
		('ICON_ATLAS_MER_DRABANT',					38,	 		1,				1,					'DRABANT_38.dds'),
		('ICON_ATLAS_MER_DRABANT',					32,	 		1,				1,					'DRABANT_32.dds'),
		('ICON_ATLAS_MER_DRABANT',					22,	 		1,				1,					'DRABANT_22.dds'),
		('ICON_ATLAS_MER_DRABANT_PORTRAIT',			256,	 	1,				1,					'DRABANT_PORTRAIT_256.dds');
----------------------------------------------------------------------------------------------------------------------------
-- IconDefinitions
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO IconDefinitions	
		(Name,															Atlas, 												'Index')
VALUES  ('ICON_LEADER_MER_KARL_XII',									'ICON_ATLAS_KARL_XII',							0),
		('ICON_UNIT_MER_DRABANT',								'ICON_ATLAS_MER_DRABANT',					0),
		('ICON_UNIT_MER_DRABANT_PORTRAIT',						'ICON_ATLAS_MER_DRABANT_PORTRAIT',			0);
--==========================================================================================================================
--==========================================================================================================================