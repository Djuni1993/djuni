
local NPC_ID = 190095

function On_Gossip(event, plr, unit)
-- Menus
plr:GossipMenuAddItem(0, "|TInterface/ICONS/Achievement_PVP_G_01:30:30|t|cffFF0000Server information", 0, 1)
plr:GossipMenuAddItem(0, "|TInterface/ICONS/Achievement_PVP_G_02:30:30|t|cffFF0000Player information How to Start?", 0, 2)
plr:GossipMenuAddItem(0, "|TInterface/ICONS/Achievement_PVP_H_10:30:30|t|CFFFF0303VIP benefits", 0, 3)
plr:GossipSendMenu(1, unit)
end

function On_Select(event, player, unit, sender, intid, code)
-- Custom messages

-- How do I get gold?
if (intid == 1) then
player:SendBroadcastMessage("The server officially started on 01/10/2022. Fun Server 255 lvl. Game type pvp/pve. More information go website!")
end

-- How do I make a ticket?
if (intid == 2) then
player:SendBroadcastMessage("|cffFF0000How to start a game? Each player starts from the Start Zone. There you will find the starting NPCs. In your bag you will find several types of tokens. Use them! Music NPCs will give you starting equipment and maximum level in the game. When you pass all the quests from the Start Zone go to the PVE Mall. There you will find the other quests you need. The server also has a Quest Zone. There are all the quests in the game. The last zone is Molten Core! Before that you have to kill Lord Madness and get the key to the MC! Madness wishes you a pleasant game!")
end

-- How do I gear up?
if (intid == 3) then
player:SendBroadcastMessage("|cff00FF40What do you get as a VIP player on the server? Get VIP Stone Rank 2 or 3 from the site. Rank 2 gives you access to a special place where you will find VIP Vendor with special equipment. Rank 3 Access to VIP Mall, VIP Quests, VIP zones, Full Tier 2-20, VIP Vendor, Donor Vendor and Upgrade Donor Items. VIP Buffs and more ...")
end

	player:GossipComplete()
end
RegisterCreatureGossipEvent(NPC_ID, 1, On_Gossip)
RegisterCreatureGossipEvent(NPC_ID, 2, On_Select)