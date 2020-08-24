local npc = script.parent:FindChildByType("AnimatedMesh")
local healTrigger = script.parent.parent:FindChildByType("Trigger")
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
=======
=======

>>>>>>> parent of df6cda8... Merge branch 'master' of https://github.com/oliviamaciejewska/ExtraCreditsGameJam

>>>>>>> parent of df6cda8... Merge branch 'master' of https://github.com/oliviamaciejewska/ExtraCreditsGameJam

>>>>>>> parent of df6cda8... Merge branch 'master' of https://github.com/oliviamaciejewska/ExtraCreditsGameJam

>>>>>>> parent of df6cda8... Merge branch 'master' of https://github.com/oliviamaciejewska/ExtraCreditsGameJam

local VFX = npc:FindChildByName("effect")

local npcRoot = script.parent.parent

VFX:Stop()

--function based on trigger interaction to change animation of npc mesh
local function OnNpcInteraction()
	npc:StopAnimations()
<<<<<<< HEAD
	npc:PlayAnimation("unarmed_use_bandage")
	Task.Wait(1)
	npc:StopAnimations()
	VFX:Play()
	Task.Wait(0.5)
	npc:Destroy()
=======
	npc.animationStance = "unarmed_idle_relaxed"


<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of df6cda8... Merge branch 'master' of https://github.com/oliviamaciejewska/ExtraCreditsGameJam
=======
>>>>>>> parent of df6cda8... Merge branch 'master' of https://github.com/oliviamaciejewska/ExtraCreditsGameJam
=======
>>>>>>> parent of df6cda8... Merge branch 'master' of https://github.com/oliviamaciejewska/ExtraCreditsGameJam
=======
>>>>>>> parent of df6cda8... Merge branch 'master' of https://github.com/oliviamaciejewska/ExtraCreditsGameJam
end

--calls interaction function when trigger pressed
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