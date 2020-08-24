local SelectionSquare = script:GetCustomProperty("SelectionSquare"):WaitForObject()
Task.Wait(0.1)
local trigger = script.parent
local mesh = trigger.parent.parent.parent

local ExampleGeo1HandMeleeWeapon = script:GetCustomProperty("ExampleGeo1HandMeleeWeapon")
local ExampleGeo1HandMeleeShield = script:GetCustomProperty("ExampleGeo1HandMeleeShield")
local ExampleGeo1HandPistol = script:GetCustomProperty("ExampleGeo1HandPistol")
local ExampleGeo2HandRifle = script:GetCustomProperty("ExampleGeo2HandRifle")
local ExampleGeo2HandStaff = script:GetCustomProperty("ExampleGeo2HandStaff")
local ExampleGeo2HandSword = script:GetCustomProperty("ExampleGeo2HandSword")



local hasPropSockets = false
--if string.match(mesh.name, "Human") == "Human" or string.match(mesh.name, "Skeleton Mob") == "Skeleton Mob" then
local socketTable = mesh:GetSocketNames()

for i, socket in pairs(socketTable) do
	if socket == "right_prop" then
		hasPropSockets = true
		break
	end
end

function OnBeginOverlap(whichTrigger, other)
	if other:IsA("Player") then
		other.clientUserData.meshToUse = mesh
		if hasPropSockets == true and mesh.clientUserData.isInitialized ~= true then
			local mcud = mesh.clientUserData
			mcud.propsTable ={}
			mcud.propsTable.geo1HandMeleeWeapon = World.SpawnAsset(ExampleGeo1HandMeleeWeapon)
			mesh:AttachCoreObject(mcud.propsTable.geo1HandMeleeWeapon, "right_prop")
			mcud.propsTable.geo1HandMeleeWeapon.visibility = Visibility.FORCE_OFF
			
			mcud.propsTable.geo1HandMeleeShield = World.SpawnAsset(ExampleGeo1HandMeleeShield)
			mesh:AttachCoreObject(mcud.propsTable.geo1HandMeleeShield, "left_arm_prop")
			mcud.propsTable.geo1HandMeleeShield.visibility = Visibility.FORCE_OFF
			
			mcud.propsTable.geo1HandPistol = World.SpawnAsset(ExampleGeo1HandPistol)
			mesh:AttachCoreObject(mcud.propsTable.geo1HandPistol, "right_prop")
			mcud.propsTable.geo1HandPistol.visibility = Visibility.FORCE_OFF
			
			mcud.propsTable.geo2HandRifle = World.SpawnAsset(ExampleGeo2HandRifle)
			mesh:AttachCoreObject(mcud.propsTable.geo2HandRifle, "right_prop")
			mcud.propsTable.geo2HandRifle.visibility = Visibility.FORCE_OFF
			
			mcud.propsTable.geo2HandStaff = World.SpawnAsset(ExampleGeo2HandStaff)
			mesh:AttachCoreObject(mcud.propsTable.geo2HandStaff, "right_prop")
			mcud.propsTable.geo2HandStaff.visibility = Visibility.FORCE_OFF
			
			mcud.propsTable.geo2HandSword = World.SpawnAsset(ExampleGeo2HandSword)
			mesh:AttachCoreObject(mcud.propsTable.geo2HandSword, "right_prop")
			mcud.propsTable.geo2HandSword.visibility = Visibility.FORCE_OFF
		end
		mesh.clientUserData.selectionIndicator = SelectionSquare
	end
end

function OnEndOverlap(whichTrigger, other)
	if other:IsA("Player") then
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
