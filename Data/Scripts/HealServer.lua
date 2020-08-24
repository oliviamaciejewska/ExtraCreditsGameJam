local healTrigger = script.parent

function OnInteracted(healTrigger, player)
	player.animationStance = "unarmed_use_bandage"
	healTrigger.isInteractable = false
end

healTrigger.interactedEvent:Connect(OnInteracted)