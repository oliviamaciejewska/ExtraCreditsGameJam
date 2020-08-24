local npc = script.parent:FindChildByType("AnimatedMesh")
local healTrigger = script.parent.parent:FindChildByType("Trigger")

local VFX = npc:FindChildByName("effect")

local npcRoot = script.parent.parent

VFX:Stop()

--function based on trigger interaction to change animation of npc mesh
local function OnNpcInteraction()
	npc:StopAnimations()
	npc:PlayAnimation("unarmed_use_bandage")
	Task.Wait(1)
	npc:StopAnimations()
	VFX:Play()
	Task.Wait(0.5)
	npc:Destroy()
end

--calls interaction function when trigger pressed
healTrigger.interactedEvent:Connect(OnNpcInteraction)

