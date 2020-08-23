local QuestDisplay = script:GetCustomProperty("QuestDisplay"):WaitForObject()
local QuestProgressPanel = script:GetCustomProperty("QuestProgressPanel")
local QuestProgressionBar = script:GetCustomProperty("QuestProgressionBar")
local QuestProgressText = script:GetCustomProperty("QuestProgressText")

local UTIL = require(script:GetCustomProperty("UTIL"))

local QUESTDATA = require(script:GetCustomProperty("DATA"))
local questTable = QUESTDATA.GetItems()

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

QuestDisplay.isEnabled = false
--QuestProgress.isEnabled = false
local noStats = true

local CurrentQuests = {}
local panelCount = 0

function ShowQuests(player, binding)
    if player == Game.GetLocalPlayer() and binding == "ability_extra_36" and noStats then
        QuestDisplay.isEnabled = true
        noStats = false
    elseif binding == "ability_extra_36" and noStats == false then
        QuestDisplay.isEnabled = false
        noStats = true
    end
end

function format_int(number)
    local i, j, minus, int, fraction = tostring(number):find("([-]?)(%d+)([.]?%d*)")
    int = int:reverse():gsub("(%d%d%d)", "%1,")
    return minus .. int:reverse():gsub("^,", "") .. fraction
end

function OnResChange(player, resName, resAmt)
    -- Refactor in progress, works but gets quite confusing.
    if player == Game.GetLocalPlayer() then
        local cquestPanel = 1
        local questBar = 2
        local questText = 3
        local cquestID = 4
        local questRes = 5
        local questDesc = 6

        if CurrentQuests[resName] ~= nil then
            if
                resName == CurrentQuests[resName][questRes] and resAmt == 2 and
                    CurrentQuests[resName][cquestPanel] == nil
             then
                local currentQuestID = tonumber(CurrentQuests[resName][cquestID])
                local resReq = tonumber(questTable[currentQuestID][RES_REQ])
                local panelText = questTable[currentQuestID][QUEST_DESC]
                local questPanel = World.SpawnAsset(QuestProgressPanel, {parent = QuestDisplay})
                table.sort(CurrentQuests)
                panelCount = panelCount + 1
                questPanel.y = -40 + (80 * panelCount)
                questPanel.x = 0
                local questBar = World.SpawnAsset(QuestProgressionBar, {parent = questPanel})
                local realAmt = resAmt - 2
                questBar.progress = realAmt / resReq
                local questText = World.SpawnAsset(QuestProgressText, {parent = questPanel})
                questText.text = CurrentQuests[resName][6]
                local tempTable = {questPanel, questBar, questText, currentQuestID, resName, panelText}
                CurrentQuests[resName] = tempTable
            elseif resName == CurrentQuests[resName][questRes] and resAmt >= 2 and resAmt <= 1000000 then
                local currentQuestID = tonumber(CurrentQuests[resName][cquestID])
                local resReq = tonumber(questTable[currentQuestID][RES_REQ])
                if resReq > resAmt - 2 and resAmt ~= nil then
                    local realAmt = resAmt - 2
                    CurrentQuests[resName][questText].text = CurrentQuests[resName][questDesc]
                    CurrentQuests[resName][questBar].progress = realAmt / resReq
                    CurrentQuests[resName][questText]:SetColor(Color.WHITE)
                    CurrentQuests[resName][questBar]:SetFillColor(Color.WHITE)
                elseif resAmt - 2 == resReq then
                    local realAmt = resAmt - 2
                    CurrentQuests[resName][questText].text = CurrentQuests[resName][questDesc]
                    CurrentQuests[resName][questBar].progress = realAmt / resReq
                    CurrentQuests[resName][questText]:SetColor(Color.YELLOW)
                    CurrentQuests[resName][questBar]:SetFillColor(Color.YELLOW)
                end
            end
            if resAmt > 1000000 and resName == CurrentQuests[resName][questRes] then
                CurrentQuests[resName][cquestPanel]:Destroy()
                panelCount = 0
                CurrentQuests[resName][cquestPanel] = false
                for i, _ in pairs(questTable) do
                    local CurrentQuestResName = questTable[i][RES_NAME]
                    if
                        player:GetResource(CurrentQuestResName) >= 2 and
                            player:GetResource(CurrentQuestResName) < 1000000
                     then
                        panelCount = panelCount + 1
                        CurrentQuests[CurrentQuestResName][cquestPanel].y = -40 + (80 * panelCount)
                        CurrentQuests[CurrentQuestResName][cquestPanel].x = 0
                    end
                end
            end
        end
    end
end
function OnPlayerJoined(player)
    Task.Wait(3) --Need to make a Event controller to fire events in order. For now adding a 3 second wait to fire after other events.
    if player == Game.GetLocalPlayer() then
        local tempTable = {}
        for i, v in pairs(questTable) do
            if
                player:GetResource(questTable[i][RES_NAME]) >= 2 and
                    player:GetResource(questTable[i][RES_NAME]) <= 1000000
             then
                local ID = questTable[i][questID]
                local questDesc = questTable[i][QUEST_DESC]
                local questPanel = World.SpawnAsset(QuestProgressPanel, {parent = QuestDisplay})
                panelCount = panelCount + 1
                questPanel.y = -40 + (80 * panelCount)
                questPanel.x = 0
                local questBar = World.SpawnAsset(QuestProgressionBar, {parent = questPanel})
                local currentQuestRes = player:GetResource(questTable[i][RES_NAME])
                currentQuestRes = currentQuestRes - 2
                questBar.progress = currentQuestRes / questTable[i][RES_REQ]
                local questText = World.SpawnAsset(QuestProgressText, {parent = questPanel})
                questText.text = questTable[i][QUEST_DESC]
                local resName = questTable[i][RES_NAME]
                tempTable = {
                    questPanel,
                    questBar,
                    questText,
                    ID,
                    resName,
                    questDesc
                }
            elseif player:GetResource(questTable[i][RES_NAME]) == 0 then
                tempTable = {nil, nil, nil, questTable[i][questID], questTable[i][RES_NAME], questTable[i][QUEST_DESC]}
            end
            CurrentQuests[questTable[i][RES_NAME]] = tempTable
        end
        player.bindingPressedEvent:Connect(ShowQuests)
        player.resourceChangedEvent:Connect(OnResChange)
    end
end

function tprint(tbl, indent) --Spits out whats in current table, great for debugging what is in a table.
    if not indent then
        indent = 0
    end
    if tbl == nil then
        print("Table was nil")
        return
    end
    for k, v in pairs(tbl) do
        formatting = string.rep("  ", indent) .. k .. ": "
        if type(v) == "table" then
            print(formatting)
            tprint(v, indent + 1)
        elseif type(v) == "boolean" then
            print(formatting .. tostring(v))
        elseif type(v) == "function" then
            -- elseif type(v) == Object.IsValid("") then
            --   print(formatting .. "object")
            print(formatting .. "function")
        else
            print(formatting .. v)
        end
    end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
