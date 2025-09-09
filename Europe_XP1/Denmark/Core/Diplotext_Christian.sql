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
		"LOC_AGENDA_MER_INQUISITIVE_ZEAL_NAME",					
		"Inquisitive Zeal"),
		("en_US", 
		"LOC_AGENDA_MER_INQUISITIVE_ZEAL_DESCRIPTION",					
		"Likes Civilizations with a high science output. Dislikes Civilizations who compete for Wonders or Great People."),
		
		-- Kudos
		("en_US", 
		"LOC_DIPLO_MODIFIER_MER_CHRISTIAN_IV_INQUISITIVE_ZEAL_SCIENCE",					
		"Christian IV shares your interest in the pursuit of knowledge and discovery."),
		("en_US", 
		"LOC_DIPLO_KUDOS_LEADER_MER_CHRISTIAN_IV_REASON_SCIENCE",
		"(You have a high science output)"),
		--
		("en_US", 
		"LOC_DIPLO_KUDO_EXIT_LEADER_MER_CHRISTIAN_IV_ANY",
		"I see you too pursue the stars themselves. There is no greater thing then the ever-expanding human mind."),
		-- Warnings
		("en_US", 
		"LOC_DIPLO_MODIFIER_MER_CHRISTIAN_IV_INQUISITIVE_ZEAL_WONDERS",					
		"Christian IV wants wonders and great people for himself."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_MER_CHRISTIAN_IV_REASON_WONDERS",
		"(You have taken a wonder or great person.)"),
		--
		("en_US", 
		"LOC_DIPLO_WARNING_EXIT_LEADER_MER_CHRISTIAN_IV_ANY",
		"Hmph, I wasn't interested in that anyway. Go, have it."),
		

--------------------------------------------------------------------
-- Early Meetings
--------------------------------------------------------------------
		-- First AI Line
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_LEADER_MER_CHRISTIAN_IV_ANY",					
		"Welcome to my court, you are a guest here and will be treated with appropriate dignity and respect. That is... if you are worthy of your status."),
		
		-- AI invitation to visit nearby City
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_MER_CHRISTIAN_IV_ANY",					
		"Come, visit my court and see my grand buildings, there are some wonderful views of the night sky from the tower of my observatory."),
		
		-- AI accepts Human invitation
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_MER_CHRISTIAN_IV_ANY",					
		"It would be rude of me to refuse such a generous offer."),
		
		-- AI invitation to exchange Capital Information
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_MER_CHRISTIAN_IV_ANY",					
		"If you would be so kind as to point to yourself on this map."),
		
		-- AI sends a Delegation
		("en_US", 
		"LOC_DIPLO_DELEGATION_FROM_AI_LEADER_MER_CHRISTIAN_IV_ANY",					
		"I give to you a delegation bearing a platter of danish pastries, poached cod, and roasted pork. And they also bring an open invitation, my court is open to guests."),
		
		-- AI accepts the Player's Delegation
		("en_US", 
		"LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_MER_CHRISTIAN_IV_ANY",					
		"Truly a wonderful gift, I'd expect nothing less."),
		
		-- AI rejects the Player's Delegation
		("en_US", 
		"LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_MER_CHRISTIAN_IV_ANY",					
		"This is hardly food for thought. Take it back."),

--------------------------------------------------------------------
-- Open Borders
--------------------------------------------------------------------
		-- AI Proposes Open Borders
		("en_US", 
		"LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_MER_CHRISTIAN_IV_ANY",					
		"Our seas are open to you, and perhaps you may return the favour."),
		-- AI Accepts Open Borders
		("en_US", 
		"LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_MER_CHRISTIAN_IV_ANY",					
		"Freedom to travel will only broaden the mind. I agree."),
		-- AI Rejects Open Borders
		("en_US", 
		"LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_MER_CHRISTIAN_IV_ANY",					
		"Let your people into my lands? Like i'd lower my standards."),

--------------------------------------------------------------------
-- Friendship
--------------------------------------------------------------------
		-- AI Proposes Friendship
		("en_US", 
		"LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_MER_CHRISTIAN_IV_ANY",					
		"Only together can we reach new heights. Come, let us join our nations, science and progress will only grow greater with our union."),
		-- AI Accepts Friendship
		("en_US", 
		"LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_MER_CHRISTIAN_IV_ANY",					
		"A most agreeable deal, i accept."),
		-- AI Rejects Friendship
		("en_US", 
		"LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_MER_CHRISTIAN_IV_ANY",					
		"You? hah."),

--------------------------------------------------------------------
-- Denounce
--------------------------------------------------------------------
		-- AI Denounced by Human
		("en_US", 
		"LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_MER_CHRISTIAN_IV_ANY",					
		"That's hardly anyway to speak to me."),
		-- AI Denounces
		("en_US", 
		"LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_MER_CHRISTIAN_IV_ANY",					
		"You are truly a vile and stupendously stupid buffoon. The world shall know what i think of you. (Denounces You)"),
		
--------------------------------------------------------------------
-- Trade Agreement with England
--------------------------------------------------------------------
		-- AI Accepts Deal
		("en_US", 
		"LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_MER_CHRISTIAN_IV_ANY",					
		"Wonderful."),
		-- AI Rejects Deal
		("en_US", 
		"LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_MER_CHRISTIAN_IV_ANY",					
		"Not at this time, perhaps."),

--------------------------------------------------------------------
-- Other Diplo
--------------------------------------------------------------------
		-- AI Proposes Alliance
		("en_US", 
		"LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_MER_CHRISTIAN_IV_ANY",					
		"Let us tie our realms together and strengthen their future foundations."),
		
		-- AI warns player for border troops
		("en_US", 
		"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_MER_CHRISTIAN_IV_ANY",					
		"Those had better be military training exercises."),

--------------------------------------------------------------------
-- War and Peace
--------------------------------------------------------------------
		-- Human declares war to the AI
		("en_US", 
		"LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_MER_CHRISTIAN_IV_ANY",					
		"You think you can break my will? I'll personally lead my soldiers to victory, and you'll regret this action."),
		
		-- AI declares war to Human
		("en_US", 
		"LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_MER_CHRISTIAN_IV_ANYY",					
		"I may have a fondness for books, but i'm an outdoorsman too. You'll find i lead my men at the front. See you soon!"),
		
		-- AI accepts peace from Human
		("en_US", 
		"LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_MER_CHRISTIAN_IV_ANY",					
		"This is hardly a good use of time and resources."),
		-- AI rejects peace from Human
		("en_US", 
		"LOC_DIPLO_MAKE_PEACE_AI_REJECT_DEAL_LEADER_MER_CHRISTIAN_IV_ANY",	-- this should be Reject_Peace probably?				
		"I don't leave things half finished."),
		-- AI asks for peace
		("en_US", 
		"LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_MER_CHRISTIAN_IV_ANY",					
		"Surely we can set aside war and focus on the luxuries of life?"),
		
		-- AI defeats human (hotseat)
		("en_US", 
		"LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_MER_CHRISTIAN_IV_ANY",					
		"I always reached for the stars, but perhaps i should have kept my head to the ground. Alas, i missed the threat right in front of me."),
		
		-- AI is defeated
		("en_US", 
		"LOC_DIPLO_DEFEAT_FROM_AI_LEADER_MER_CHRISTIAN_IV_ANY",					
		"I always reached for the stars, but perhaps i should have kept my head to the ground. Alas, i missed the threat right in front of me.");
		

--==========================================================================================================================
--==========================================================================================================================


