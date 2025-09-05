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

--==========================================================================================================================
-- 领袖外交文本
--==========================================================================================================================
INSERT OR REPLACE INTO LocalizedText
		(Language, Tag,	Text)
VALUES
--------------------------------------------------------------------
-- 历史议程
--------------------------------------------------------------------
		-- 议程
		("zh_Hans_CN",
		"LOC_AGENDA_LEU_ORELIE_NAME",
		"温卡国王"),
		("zh_Hans_CN",
		"LOC_AGENDA_LEU_ORELIE_DESCRIPTION",
		"重视开放边界协议，并喜欢愿意与他签署该协议的文明。对那些像对待蛮族一样威胁其他民族、清剿其营地的文明逐渐失去信任。"),

		-- 称赞
		("zh_Hans_CN",
		"LOC_DIPLO_MODIFIER_LEU_ORELIE_POSITIVE",
		"奥雷利耶·安托万一世喜欢签署开放边界协议的文明"),
		("zh_Hans_CN",
		"LOC_DIPLO_KUDO_EXIT_LEADER_LEU_ORELIE_ANY",
		"有了这份协议，阿劳卡尼亚的半人马将能自由地徜徉于这片美丽的土地。我们不胜感激。"),
		("zh_Hans_CN",
		"LOC_DIPLO_KUDO_LEADER_LEU_ORELIE_REASON_ANY",
		"(您与他签署了开放边界协议)"),

		-- 警告
		("zh_Hans_CN",
		"LOC_DIPLO_MODIFIER_LEU_ORELIE_NEGATIVE",
		"奥雷利耶·安托万一世不喜欢清剿营地的文明"),
		("zh_Hans_CN",
		"LOC_DIPLO_WARNING_EXIT_LEADER_LEU_ORELIE_ANY",
		"你为了贪婪而杀戮和灭绝原住民！难道你看不出这些是他们合法的土地吗？"),
		("zh_Hans_CN",
		"LOC_DIPLO_WARNING_LEADER_LEU_ORELIE_REASON_ANY",
		"(您清剿了一个营地)"),

--------------------------------------------------------------------
-- 早期会面
--------------------------------------------------------------------
		-- AI首句台词
		("zh_Hans_CN",
		"LOC_DIPLO_FIRST_MEET_LEADER_LEU_ORELIE_ANY",
		"我，美丽的阿劳卡尼亚与巴塔哥尼亚之王，奥雷利耶·安托万一世。愿此次相遇为我们两国带来繁荣。"),

		-- AI邀请玩家访问附近城市
		("zh_Hans_CN",
		"LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_LEU_ORELIE_ANY",
		"我们或许尚无宫殿，但我向您保证佩尔肯科拥有一个合格首都所应有的一切。况且这片土地本身就足够雄伟壮丽！"),

		-- AI接受玩家邀请
		("zh_Hans_CN",
		"LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_LEU_ORELIE_ANY",
		"阿劳卡尼亚与巴塔哥尼亚之王优雅地接受了"),

		-- AI邀请交换首都信息
		("zh_Hans_CN",
		"LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_LEU_ORELIE_ANY",
		"请让我了解您的人民。这必将有助于我们未来达成任何协议。"),

		-- AI派遣代表团
		("zh_Hans_CN",
		"LOC_DIPLO_DELEGATION_FROM_AI_LEADER_LEU_ORELIE_ANY",
		"马普切人制作的蓬乔斗篷是我见过最精美的。我已与托基首领安排给您送去一些。"),

		-- AI接受玩家代表团
		("zh_Hans_CN",
		"LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",
		"我会将您的小玩意儿带给马普切的孩子们，他们会喜欢的！"),

		-- AI拒绝玩家代表团
		("zh_Hans_CN",
		"LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",
		"您认为这些礼物配得上一位国王吗？恐怕我不得不拒绝您这简单的馈赠。"),

		-- 开启外交界面
		("zh_Hans_CN",
		"LOC_DIPLO_GREETING_LEADER_LEU_ORELIE_ANY",
		"迎接另一位领袖总是令人愉快！"),

--------------------------------------------------------------------
-- 开放边界
--------------------------------------------------------------------
		-- AI提议开放边界
		("zh_Hans_CN",
		"LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_LEU_ORELIE_ANY",
		"经过与托基和朗科首领们的集会，我国王决定向您敞开大门！您可愿接受这份通往繁荣的邀请？"),
		-- AI接受开放边界
		("zh_Hans_CN",
		"LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",
		"您将能畅游阿劳卡尼亚，这会是件乐事。"),
		-- AI拒绝开放边界
		("zh_Hans_CN",
		"LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",
		"马普切的托基首领们还不够信任您，我同意他们的看法。"),

--------------------------------------------------------------------
-- 友谊
--------------------------------------------------------------------
		-- AI提议友谊
		("zh_Hans_CN",
		"LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_LEU_ORELIE_ANY", -- 注意：原代码此处Tag有误，使用了OPEN_BORDERS的Tag，此处按意图修正为DECLARE_FRIEND
		"我怀着无比荣幸，秉承马普切人的意愿，愿与您的人民结为友邦！"),
		-- AI接受友谊
		("zh_Hans_CN",
		"LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",
		"这是我们共同胜利的时刻！"),
		-- AI拒绝友谊
		("zh_Hans_CN",
		"LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",
		"恐怕马普切的托基首领们认为您是一个威胁。"),

--------------------------------------------------------------------
-- 谴责
--------------------------------------------------------------------
		-- 玩家谴责AI
		("zh_Hans_CN",
		"LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",
		"你竟敢谴责我？托基首领会知晓此事的！"),
		-- AI谴责玩家
		("zh_Hans_CN",
		"LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_LEU_ORELIE_ANY",
		"你的存在本身就在玷污这原本美丽的景致！我，国王，谴责你卑劣的行径！"),

--------------------------------------------------------------------
-- 交易
--------------------------------------------------------------------
		-- AI接受交易
		("zh_Hans_CN",
		"LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_LEU_ORELIE_ANY",
		"我们无比优雅地接受。"),
		-- AI拒绝交易
		("zh_Hans_CN",
		"LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_LEU_ORELIE_ANY",
		"休要侮辱阿劳卡尼亚与巴塔哥尼亚王国！"),

--------------------------------------------------------------------
-- 其他外交
--------------------------------------------------------------------
		-- AI提议同盟
		("zh_Hans_CN",
		"LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_LEU_ORELIE_ANY",
		"加入我吧，我的朋友。通过结盟，帮助我为马普切人创建这个美丽的王国。"),

		-- AI因边境军队警告玩家
		("zh_Hans_CN",
		"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_LEU_ORELIE_ANY",
		"一些马普切半人马已注意到您的军队出现在我国边境。请谨慎行事，马普切人的意志比您想象的要更强大。"),

--------------------------------------------------------------------
-- 战争与和平
--------------------------------------------------------------------
		-- 玩家对AI宣战
		("zh_Hans_CN",
		"LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",
		"我一直试图和平地建设这个王国……马普切的半人马会阻止你的！"),

		-- AI对玩家宣战
		("zh_Hans_CN",
		"LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_LEU_ORELIE_ANY", -- 修正了原Tag末尾的拼写错误 'ANYY'
		"托基首领认为您过于危险，不能留活口。我无法阻止他们的怒火，您也休想。"),

		-- AI接受玩家和平提议
		("zh_Hans_CN",
		"LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_LEU_ORELIE_ANY",
		"我早说过阿劳卡尼亚人不是好惹的。很高兴我们能签署这份和平条约。来我的鲁卡小屋庆祝吧！"),
		-- AI拒绝玩家和平提议
		("zh_Hans_CN",
		"LOC_DIPLO_MAKE_PEACE_AI_REJECT_DEAL_LEADER_LEU_ORELIE_ANY", -- 修正了Tag，原Tag与接受和平相同，应为REJECT
		"即使我想签署和平条约，托基首领们也一心要摧毁您……"),
		-- AI请求和平
		("zh_Hans_CN",
		"LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_LEU_ORELIE_ANY",
		"我恳求您！让我们结束这场灭绝吧！让我们文明地相处！"),

		-- AI击败玩家（热座模式）
		("zh_Hans_CN",
		"LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_LEU_ORELIE_ANY",
		"我本想通过和平方式建设这个王国……但马普切人是凶猛的战士，他们向您展示了他们对那些嗜血者毫无畏惧。"),

		-- AI被击败
		("zh_Hans_CN",
		"LOC_DIPLO_DEFEAT_FROM_AI_LEADER_LEU_ORELIE_ANY",
		"您或许认为我是个疯子……我的疯狂在于相信这个美丽的王国……相信这美丽的文化……但如果我有所领悟，那就是马普切人从未被真正击败过……即使没有我，他们也会再次崛起。");

--==========================================================================================================================
--==========================================================================================================================
