local npc = script.parent:FindChildByType("AnimatedMesh")
local healTrigger = script.parent.parent:FindChildByType("Trigger")


local function OnNpcInteraction()
	npc:StopAnimations()
	npc.animationStance = "unarmed_idle_relaxed"

end

healTrigger.interactedEvent:Connect(OnNpcInteraction)

--[[
function OnBeginOverlap(whichTrigger, other)
	if other:IsA("Player") then
		print(whichTrigger.name .. ": Begin Trigger Overlap with " .. other.name)
	end
end

function OnEndOverlap(whichTrigger, other)
	if other:IsA("Player") then
		print(whichTrigger.name .. ": End Trigger Overlap with " .. other.name)
	end
end

function OnInteracted(whichTrigger, other)
	if other:IsA("Player") then
		print(whichTrigger.name .. ": Trigger Interacted " .. other.name)
	end
end

trigger.beginOverlapEvent:Connect(OnBeginOverlap)
trigger.endOverlapEvent:Connect(OnEndOverlap)
trigger.interactedEvent:Connect(OnInteracted)
]]