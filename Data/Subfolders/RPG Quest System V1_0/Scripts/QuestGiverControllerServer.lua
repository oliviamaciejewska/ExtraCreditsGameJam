local QUESTDATA = require(script:GetCustomProperty("DATA"))
local questTable = QUESTDATA.GetItems()
--local ROOT = script:GetCustomProperty("RPGQuestGiver"):WaitForObject()
--local NPCQuest = ROOT:GetCustomProperty("questID")
--local Disappear = ROOT:GetCustomProperty("DisappearOnAccept") or false

--Magic Numbers
local questID = 1
local questName = 2
local rewardType = 3
local rewardValue = 4
local questDescText = 5
local questCompleteText = 6
local reqLevel = 7
local RES_NAME = 8
local RES_REQ = 9

local dupeCheck = nil
local dupeCheck2 = nil

function OnPlayerAccept(player, data)
    -- if tonumber(data.id) == NPCQuest then
    local NPCQuest = tonumber(data.id)
    player:SetResource(questTable[NPCQuest][RES_NAME], 2)
    print(player:GetResource(questTable[NPCQuest][RES_NAME]))
end
-- end

function OnPlayerComplete(player, data)
    --   if tonumber(data.id) == NPCQuest then
    local NPCQuest = tonumber(data.id)
    local level = player:GetResource("level")
    local xp = CoreMath.Round(100 * 1.15 ^ level)
    local coins = CoreMath.Round(100 * 1.10 ^ level)
    player:AddResource("xp", xp)
    player:AddResource("Coins", coins)
    player:AddResource("CoinTotal", coins)
    local questComplete = os.time() + 43000 -- used to make repeatble quests, currently set to 12 hours
    if questTable[NPCQuest][rewardType] == 2 then
        -- will be used later for either giving equipment or resource based items.
    end
    player:SetResource(questTable[NPCQuest][RES_NAME], questComplete)
end

Events.ConnectForPlayer("QuestAccept", OnPlayerAccept)
Events.ConnectForPlayer("QuestComplete", OnPlayerComplete)
