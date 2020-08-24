local WEAPON = script:FindAncestorByType('Weapon')
if not WEAPON then
    error(script.name .. " should be part of Weapon object hierarchy.")
end

local DAMAGE_AMOUNT = WEAPON.damage
local DAMAGE_HEADSHOT = WEAPON:GetCustomProperty("HeadshotDamage")

local function OnTargetImpacted(weapon,impactData)
    local target = impactData.targetObject

    -- Apply damage to target if it's a player
    if Object.IsValid(target) and target:IsA("Player") then

        local weaponOwner = impactData.weaponOwner
        local numberOfHits = #impactData:GetHitResults()

        -- Assign additional headshot damage if projectile hit enemy's head
        if impactData.isHeadshot then
            local additionalDamageInfo = Damage.New(DAMAGE_HEADSHOT * numberOfHits)
            additionalDamageInfo.reason = DamageReason.COMBAT
            additionalDamageInfo.sourceAbility = impactData.sourceAbility
            additionalDamageInfo.sourcePlayer = weaponOwner

            -- Apply additionaldamage to the enemy player
            target:ApplyDamage(additionalDamageInfo)
        end
    end
end

WEAPON.targetImpactedEvent:Connect(OnTargetImpacted)