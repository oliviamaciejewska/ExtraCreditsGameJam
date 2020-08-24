local npc = script.parent.parent
local healTrigger = script.parent.parent:FindChildByType("Trigger")

local ability = script.parent.parent:FindChildByType("Ability")

local function OnNpcInteraction()
	npc:StopAnimations()
	npc.animationStance = "unarmed_idle_relaxed"
end

function OnPlayAnimation()
	if ability.owner and ability.owner == Game.GetLocalPlayer() then
		ability:Activate()
	end
end

Events.Connect("Healed", OnPlayAnimation)
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