function QuestItemPickup(player, resName)
player:AddResource(resName, 1)
end


Events.ConnectForPlayer("QuestItemPickup", QuestItemPickup)