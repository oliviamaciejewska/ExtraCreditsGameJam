local jsonString = '[{"id":1,"Name":"GamerTitan Tutorial Sword","RewardType":1,"RewardValue":10,"QuestDescText":"Find The Lost Sword","QuestCompleteText":"Complete Text","ReqLevel":1,"ResName":"Q1","ResReq":1,"questText":"Find The Lost Sword"},{"id":2,"Name":"GamerTitan Quest 2","RewardType":1,"RewardValue":10,"QuestDescText":"Kill 5 things Quest","QuestCompleteText":"Complete Text","ReqLevel":1,"ResName":"Q2","ResReq":5,"questText":"Kill Some Stuff"},{"id":3,"Name":"Find The Other Sword","RewardType":1,"RewardValue":10,"QuestDescText":"Find The Sword","QuestCompleteText":"Complete Text","ReqLevel":1,"ResName":"Q3","ResReq":1,"questText":"Find The Sword"}]'
------------------------------------
--- DO NOT EDIT BELOW THIS LINE  ---
------------------------------------
QUESTDATA = {}

local json = require(script:GetCustomProperty("jSON"))
local newString = json.decode(jsonString)

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
local QUEST_DESC = 10

function QUESTDATA.GetItems()
    local questTable = {}

    for key, item in ipairs(newString) do
        local tempTable = {}
        for index, value in pairs(item) do
            if index == "id" then
                tempTable[questID] = value
            end
            if index == "Name" then
                tempTable[questName] = value
            end
            if index == "RewardType" then
                tempTable[rewardType] = value
            end
            if index == "RewardValue" then
                tempTable[rewardValue] = value
            end
            if index == "QuestDescText" then
                tempTable[questDescText] = value
            end
            if index == "QuestCompleteText" then
                tempTable[questCompleteText] = value
            end
            if index == "ReqLevel" then
                tempTable[reqLevel] = value
            end
            if index == "ResName" then
                tempTable[RES_NAME] = value
            end
            if index == "ResReq" then
                tempTable[RES_REQ] = value
            end
            if index == "questText" then
                tempTable[QUEST_DESC] = value
            end
        end
        questTable[key] = tempTable
    end
    return questTable
end

return QUESTDATA
