local trigger = script.parent

trigger.beginOverlapEvent(function(trigger, other)
	if other:IsA("Player") then
		Events.BroadcastToPlayer(other, "Healed")
	end
end)