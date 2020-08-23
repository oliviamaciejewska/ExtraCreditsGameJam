local trigger = script:GetCustomProperty("Trigger"):WaitForObject()
local ROOT = script:GetCustomProperty("RPGQuestGiver"):WaitForObject()
local NPCQuest = ROOT:GetCustomProperty("questID")
local Disappear = ROOT:GetCustomProperty("DisappearOnAccept") or false
local QuestDialog = script:GetCustomProperty("QuestGiverPanel"):WaitForObject()
local AcceptButton = script:GetCustomProperty("AcceptButton"):WaitForObject()
local DeclineButton = script:GetCustomProperty("DeclineButton"):WaitForObject()
local QuestComplete = script:GetCustomProperty("QuestGiverPanel_0"):WaitForObject()
local CompleteButton = script:GetCustomProperty("CompleteButton"):WaitForObject()
local QuestRewardPopup = script:GetCustomProperty("QuestRewardPopup"):WaitForObject()
local QuestDescText = script:GetCustomProperty("QuestDescText"):WaitForObject()
local QuestName = script:GetCustomProperty("QuestName"):WaitForObject()
local Camera = script:GetCustomProperty("ThirdPersonCamera"):WaitForObject()
local QUESTDATA = require(script:GetCustomProperty("QUESTDATA"))
local questTable = QUESTDATA.GetItems()
local API = require(script:GetCustomProperty("API"))

local questID = 1
local questName = 2
local rewardType = 3
local rewardValue = 4
local questDescText = 5
local questCompleteText = 6
local reqLevel = 7
local RES_NAME = 8
local RES_REQ = 9

--- player.clientUserData.quests = {}
local marker
QuestDialog.isEnabled = false
QuestComplete.isEnabled = false
QuestRewardPopup.isEnabled = false
function OnEndOverlap(whichTrigger, other)
	if other:IsA("Player") then
		trigger.isInteractable = true
		QuestDialog.isEnabled = false
		--CompleteButton.isEnabled = false
		UI.SetCursorVisible(false)
		UI.SetCanCursorInteractWithUI(false)
		Camera.isDistanceAdjustable = true
	end
end

function OnCompleteQuest(button)
	if NPCQuest == tonumber(button.name) then
		trigger.isInteractable = true
		QuestComplete.isEnabled = false
		UI.SetCursorVisible(false)
		UI.SetCanCursorInteractWithUI(false)
		QuestRewardPopup.isEnabled = false
		Camera.isDistanceAdjustable = true
		Events.BroadcastToServer("QuestComplete", {id = button.name})
		API.RemovePointOfInterest(marker)
	end
end

function OnAcceptQuest(button)
	if NPCQuest == tonumber(button.name) then
		trigger.isInteractable = true
		QuestDialog.isEnabled = false
		UI.SetCursorVisible(false)
		UI.SetCanCursorInteractWithUI(false)
		ROOT.clientUserData.QuestID = tonumber(questTable[NPCQuest][questID])
		Events.BroadcastToServer("QuestAccept", {id = button.name})
		if Disappear then
		--	NPC.isEnabled = false
		end
		local NPCLocation = ROOT:GetWorldPosition()
		marker = API.AddPointOfInterestPosition(NPCLocation, questTable[NPCQuest][questName])
	end
end

function OnDeclineQuest(button)
	trigger.isInteractable = true
	QuestDialog.isEnabled = false
	CompleteButton.isEnabled = false
	UI.SetCursorVisible(false)
	UI.SetCanCursorInteractWithUI(false)
	Camera.isDistanceAdjustable = true
end

function OnInteracted(whichTrigger, other)
	if other:IsA("Player") then
		Camera.isDistanceAdjustable = false
		local resReq = tonumber(questTable[NPCQuest][RES_REQ] + 2)
		local didQuest = other:GetResource(questTable[NPCQuest][RES_NAME])
		if didQuest >= 2 then
			ROOT.clientUserData.QuestID = tonumber(questTable[NPCQuest][questID])
		end
		local onQuest = ROOT.clientUserData.QuestID
		if NPCQuest ~= onQuest and didQuest ~= 1 and didQuest < 1000000 then
			trigger.isInteractable = false
			QuestDialog.isEnabled = true
			UI.SetCursorVisible(true)
			UI.SetCanCursorInteractWithUI(true)
			QuestDescText.text = questTable[NPCQuest][questDescText]
			QuestName.text = questTable[NPCQuest][questName]
			if AcceptButton then
				AcceptButton.isEnabled = true
			end
			AcceptButton.name = tostring(NPCQuest)
			AcceptButton.clickedEvent:Connect(OnAcceptQuest)
			DeclineButton.clickedEvent:Connect(OnDeclineQuest)
		elseif didQuest < 1000000 and didQuest >= 2 and other:GetResource(questTable[NPCQuest][RES_NAME]) < resReq then
			trigger.isInteractable = false
			QuestDialog.isEnabled = true
			UI.SetCursorVisible(true)
			UI.SetCanCursorInteractWithUI(true)
			QuestDescText.text =
				other.name ..
				" you haven't done what I've asked. Please, press J to track your quest and come back to me once you have completed it."
			QuestName.text = questTable[NPCQuest][questName]
			AcceptButton.isEnabled = false

			DeclineButton.text = "Goodbye"
			DeclineButton.clickedEvent:Connect(OnDeclineQuest)
		elseif didQuest > 1000000 then
			trigger.isInteractable = false
			QuestDialog.isEnabled = true
			UI.SetCursorVisible(true)
			UI.SetCanCursorInteractWithUI(true)
			QuestDescText.text = "Thank you for your help " .. other.name .. " I will tell the others."
			QuestName.text = "Quest Complete"
			AcceptButton.isEnabled = false

			DeclineButton.text = "Goodbye"
			DeclineButton.clickedEvent:Connect(OnDeclineQuest)
		end

		if
			NPCQuest == onQuest and other:GetResource(questTable[NPCQuest][RES_NAME]) ~= 0 and
				other:GetResource(questTable[NPCQuest][RES_NAME]) >= resReq and
				1000000 > other:GetResource(questTable[NPCQuest][RES_NAME])
		 then
			trigger.isInteractable = false
			QuestComplete.isEnabled = true
			CompleteButton.isEnabled = true
			CompleteButton.name = tostring(NPCQuest)
			UI.SetCursorVisible(true)
			UI.SetCanCursorInteractWithUI(true)
			CompleteButton.clickedEvent:Connect(OnCompleteQuest)
		end
	end
end

function CloseItemWindow(player, binding)
	if QuestDialog.isEnabled == true then
		if
			binding == "ability_extra_21" or binding == "ability_extra_30" or binding == "ability_extra_31" or
				binding == "ability_extra_32"
		 then
			trigger.isInteractable = true
			QuestDialog.isEnabled = false
			CompleteButton.isEnabled = false
			UI.SetCursorVisible(false)
			UI.SetCanCursorInteractWithUI(false)
			Camera.isDistanceAdjustable = true
		end
	end
end
trigger.endOverlapEvent:Connect(OnEndOverlap)
trigger.interactedEvent:Connect(OnInteracted)
Game.GetLocalPlayer().bindingPressedEvent:Connect(CloseItemWindow)
