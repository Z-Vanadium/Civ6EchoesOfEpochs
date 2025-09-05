--==========================================================================================================================
-- LEADER DIPLO TEXT
--==========================================================================================================================
INSERT OR REPLACE INTO LocalizedText
		(Language, Tag,	Text)
VALUES
--------------------------------------------------------------------
-- Historical Agenda
--------------------------------------------------------------------
		-- Agenda
		("en_US", 
		"LOC_AGENDA_LEU_ORELIE_NAME",					
		"Huinca King"),
		("en_US", 
		"LOC_AGENDA_LEU_ORELIE_DESCRIPTION",					
		"Values Open Border agreements and likes civilizations who are willing to sing them with him. Grows uncofident of civilizations that threat other peoples like Barbarians, clearing their encampments."),
		
		-- Kudos
		("en_US", 
		"LOC_DIPLO_MODIFIER_LEU_ORELIE_POSITIVE",					
		"Orélie Antoine I likes civilizations that sign Open Border Agreements"),
		("en_US", 
		"LOC_DIPLO_KUDO_EXIT_LEADER_LEU_ORELIE_ANY",
		"With this agreement, the centaurs of the Araucanía will be able to roam these beautiful lands with freedom. We are most thankful"),
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LEU_ORELIE_REASON_ANY",
		"(You signed an Open Borders Agreement with him)"),
		
		-- Warnings
		("en_US", 
		"LOC_DIPLO_MODIFIER_LEU_ORELIE_NEGATIVE",					
		"Orélie Antoine I dislikes civilizations that clear Encampments"),
		("en_US", 
		"LOC_DIPLO_WARNING_EXIT_LEADER_LEU_ORELIE_ANY",
		"You kill and exterminate the natives for your greed! Can't you see these are their rightful lands?"),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LEU_ORELIE_REASON_ANY",
		"(You cleared an Encampment)"),
		
--------------------------------------------------------------------
-- Early Meetings
--------------------------------------------------------------------
		-- First AI Line
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_LEADER_LEU_ORELIE_ANY",					
		"I, the King of the beautiful Araucanía and Patagonia, Orélie Antoine I. May this encounter bring prosperity to both our realms"),
		
		-- AI invitation to visit nearby City
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_LEU_ORELIE_ANY",					
		"We may not have a palace yet, but I assure you Perquenco has everything a proper capital has to offer. And these lands are majestic enough by themselves!"),
		
		-- AI accepts Human invitation
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_LEU_ORELIE_ANY",					
		"The King of Araucanía and Patagonia accepts gracefully"),
		
		-- AI invitation to exchange Capital Information
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_LEU_ORELIE_ANY",					
		"Allow me to know about your people. That will surely aid in any future agreements between us"),
		
		-- AI sends a Delegation
		("en_US", 
		"LOC_DIPLO_DELEGATION_FROM_AI_LEADER_LEU_ORELIE_ANY",					
		"The Mapuche make some of the finest ponchos I've ever seen. I have made arrangements with the Toqui to send you some"),
		
		-- AI accepts the Player's Delegation
		("en_US", 
		"LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",					
		"I will bring your trinkets to the Mapuche children, they'll love them!"),
		
		-- AI rejects the Player's Delegation
		("en_US", 
		"LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",					
		"Do you think these gifts are proper for a King? I'm afraid I have to reject your simple offering"),

		-- Opening Diplo Screen
		("en_US", 
		"LOC_DIPLO_GREETING_LEADER_LEU_ORELIE_ANY",					
		"Always nice to greet another leader!"),

--------------------------------------------------------------------
-- Open Borders
--------------------------------------------------------------------
		-- AI Proposes Open Borders
		("en_US", 
		"LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_LEU_ORELIE_ANY",					
		"After a gathering with the Toquis and the Lonkos, our kingdom has decided to open their doors to you! Shall you accept this invitation to prosperity?"),
		-- AI Accepts Open Borders
		("en_US", 
		"LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",					
		"It will be a pleasure for you to roam the Araucanía"),
		-- AI Rejects Open Borders
		("en_US", 
		"LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",					
		"The Toquis of the Mapuche don't trust you enough, and I agree with them."),

--------------------------------------------------------------------
-- Friendship
--------------------------------------------------------------------
		-- AI Proposes Friendship
		("en_US", 
		"LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_LEU_ORELIE_ANY",					
		"It is with great honour that I carry the Mapuche will of befriending your people!"),
		-- AI Accepts Friendship
		("en_US", 
		"LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",					
		"This is the hour of our victory together!"),
		-- AI Rejects Friendship
		("en_US", 
		"LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",					
		"The Toquis of the Mapuche believe you are a menace, I'm afraid."),

--------------------------------------------------------------------
-- Denounce
--------------------------------------------------------------------
		-- AI Denounced by Human
		("en_US", 
		"LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",					
		"How dare you denounce me? The Toquis will hear of this!"),
		-- AI Denounces
		("en_US", 
		"LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_LEU_ORELIE_ANY",					
		"Your mere presence corrupts the otherwise beautiful scenery! I, the King, denounce your foul deeds!"),
		
--------------------------------------------------------------------
-- Trade Agreement with England
--------------------------------------------------------------------
		-- AI Accepts Deal
		("en_US", 
		"LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_LEU_ORELIE_ANY",					
		"We accept most graciously."),
		-- AI Rejects Deal
		("en_US", 
		"LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_LEU_ORELIE_ANY",					
		"Don't insult the Kingdom of Araucanía and Patagonia!"),

--------------------------------------------------------------------
-- Other Diplo
--------------------------------------------------------------------
		-- AI Proposes Alliance
		("en_US", 
		"LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_LEU_ORELIE_ANY",					
		"Join me, my friend. Help me create this beautiful kingdom for the Mapuche with an alliance."),
		
		-- AI warns player for border troops
		("en_US", 
		"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_LEU_ORELIE_ANY",					
		"Some of the Mapuche centaurs have noticed your presence at our borders. Proceed with caution, the will of the Mapuche is stronger than you believe"),

--------------------------------------------------------------------
-- War and Peace
--------------------------------------------------------------------
		-- Human declares war to the AI
		("en_US", 
		"LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",					
		"I've been trying to build this kingdom peacefully... The centaurs of the Mapuche will stop you!"),
		
		-- AI declares war to Human
		("en_US", 
		"LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_LEU_ORELIE_ANYY",					
		"The Toquis believe you are too dangerous to be kept alive. I can't stop their fury, and neither will you"),
		
		-- AI accepts peace from Human
		("en_US", 
		"LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_LEU_ORELIE_ANY",					
		"I told you the Araucanians were not to be toyed around with. I'm glad we could sign this peace treaty. Let us celebrate at my ruka!"),
		-- AI rejects peace from Human
		("en_US", 
		"LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_LEU_ORELIE_ANY",					
		"Even if I wanted to sign a peace treaty, the Toquis are fixated on destroying you..."),
		-- AI asks for peace
		("en_US", 
		"LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_LEU_ORELIE_ANY",					
		"I beg you! Let us end this extermination! Let us be civilized!"),
		
		-- AI defeats human (hotseat)
		("en_US", 
		"LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",					
		"I wanted to build this kingdom through peace... But the Mapuche are fierce warriors, and they showed you they have no fear against those who seek blood."),
		
		-- AI is defeated
		("en_US", 
		"LOC_DIPLO_DEFEAT_FROM_AI_LEADER_LEU_ORELIE_ANY",					
		"You may think me a mad man... My madness was believing in this beautiful kingdom... in this beautiful culture... But if I have learned something, is that the Mapuche are never truly defeated... Even without me, they will rise");
		

--==========================================================================================================================
--==========================================================================================================================

