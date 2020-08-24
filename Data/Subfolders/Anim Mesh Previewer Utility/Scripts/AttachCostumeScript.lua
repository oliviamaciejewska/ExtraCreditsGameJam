local sockets = {}
local trigger = script:GetCustomProperty("Trigger"):WaitForObject()
local mesh = script:GetCustomProperty("CostumeTarget"):WaitForObject()
local isAttached = false
local socketsInitialized = false

function wear_costume(trigger, target_player)
	-- If this is the first time dealing with the costume, store initial transforms on each piece.
	if socketsInitialized == false then
		socketsInitialized = true
		-- Fill the table with the groups holding each part of the costume.
		sockets = script:GetChildren()
		-- Store the initial transform on each group.
		for idx, child in pairs(sockets) do
	    	child.clientUserData.originalTransform = child:GetWorldTransform()
	    end
	end
	if isAttached == false then
		isAttached = true
		-- Hide the Animated Mesh.
		mesh.visibility = Visibility.FORCE_OFF
		-- Attach each group to their corresponding socket on the Animated Mesh.
	    for idx, child in pairs(sockets) do
	        mesh:AttachCoreObject (child, child.name)
	    end
	else
		-- Unhide the Animated Mesh
		mesh.visibility = Visibility.INHERIT
		-- Detach each group and restore them to their original transforms.
		for idx, child in pairs(sockets) do
	       child.parent = script
	       child:SetWorldTransform(child.clientUserData.originalTransform)
	    end
		isAttached = false
	end
end

-- Bind the function to the trigger beginOverlapEvent
trigger.interactedEvent:Connect(wear_costume)