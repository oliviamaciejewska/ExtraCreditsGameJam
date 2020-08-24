local EQUIPMENT = script:FindAncestorByType('Equipment')
local ABILITY = script:FindAncestorByType('Ability')
local diedHandle = nil

function OnPlayerDied(player, damage)
	player:ActivateWalking()
end

function OnEquipped(equipment, player)
    diedHandle = player.diedEvent:Connect(OnPlayerDied)
end

function OnUnequipped(equipment, player)
    if diedHandle then
        diedHandle:Disconnect()
    end
    player:ActivateWalking()
end

function StartYeeting(ability)
	ability.owner:ActivateYeeting()
end

function StopYeeting(ability)
	ability.owner:ActivateWalking()
end

function ActivateYeeting(player, damage)
	
end

ABILITY.executeEvent:Connect(StartYeeting)
ABILITY.cooldownEvent:Connect(StopYeeting)
EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)