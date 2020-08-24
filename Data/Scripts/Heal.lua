local npc = script.parent:FindChildByType("AnimatedMesh")
local healTrigger = script.parent.parent:FindChildByType("Trigger")
local propIsHealed = script.parent.parent:GetCustomProperty("isHealed")


local function OnNpcInteraction()
	npc:StopAnimations()
	npc.animationStance = "unarmed_idle_relaxed"
	propIsHealed = true
end

healTrigger.interactedEvent:Connect(OnNpcInteraction)

