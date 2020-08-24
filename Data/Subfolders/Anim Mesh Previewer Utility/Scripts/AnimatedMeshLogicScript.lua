local SelectedMeshString = script:GetCustomProperty("SelectedMeshString"):WaitForObject()
local AnimStanceSelectedString = script:GetCustomProperty("AnimStanceSelectedString"):WaitForObject()
local PlayAnimSelectedString = script:GetCustomProperty("PlayAnimSelectedString"):WaitForObject()
local AnimTickDisplay = script:GetCustomProperty("AnimTickDisplay"):WaitForObject()
local PlayAnimTimeData = script:GetCustomProperty("PlayAnimTimeData"):WaitForObject()
local PlayAnimLengthData = script:GetCustomProperty("PlayAnimLengthData"):WaitForObject()
local PlaybackRateString = script:GetCustomProperty("PlaybackRateString"):WaitForObject()
local NegativePlaybackRateTooltipPanel = script:GetCustomProperty("NegativePlaybackRateTooltipPanel"):WaitForObject()
local NegativePlaybackRateTooltipPanel02 = script:GetCustomProperty("NegativePlaybackRateTooltipPanel02"):WaitForObject()
local AnimatedMeshesGroup = script:GetCustomProperty("AnimatedMeshesGroup"):WaitForObject()
local OverheadPanel = script:GetCustomProperty("OverheadPanel"):WaitForObject()
local AnimStanceLoopTextObject = script:GetCustomProperty("AnimStanceLoopTextObject"):WaitForObject()
local PlayAnimLoopTextObject = script:GetCustomProperty("PlayAnimLoopTextObject"):WaitForObject()
local OverheadAnimTickDisplay = script:GetCustomProperty("OverheadAnimTickDisplay"):WaitForObject()
local OverheadAnimLabel = script:GetCustomProperty("OverheadAnimLabel"):WaitForObject()
local OverheadAnimTextObject = script:GetCustomProperty("OverheadAnimTextObject"):WaitForObject()
local GeneralInfoPanel = script:GetCustomProperty("GeneralInfoPanel"):WaitForObject()
local CtrlTip = script:GetCustomProperty("CtrlTip"):WaitForObject()
local CodeDumpText01 = script:GetCustomProperty("CodeDumpText01"):WaitForObject()
local CodeDumpText02 = script:GetCustomProperty("CodeDumpText02"):WaitForObject()
local CodeDumpText03 = script:GetCustomProperty("CodeDumpText03"):WaitForObject()
local CodeDumpText04 = script:GetCustomProperty("CodeDumpText04"):WaitForObject()
local UIVisibilityOptionsObject = script:GetCustomProperty("UIVisibilityOptionsObject"):WaitForObject()

local GeneralInfoPanelVisibility = UIVisibilityOptionsObject:GetCustomProperty("General_Info_Panel_Visibility")
local SceneTitleBarVisibility = UIVisibilityOptionsObject:GetCustomProperty("Scene_Title_Bar_Visibility")
local Controls_UI_Panel_Visibility = UIVisibilityOptionsObject:GetCustomProperty("Controls_UI_Panel_Visibility")
local CurrentValuesPanelVisibility = UIVisibilityOptionsObject:GetCustomProperty("Current_Values_Panel_Visibility")
local GeneralInfoTitlePanel = script:GetCustomProperty("GeneralInfoTitlePanel"):WaitForObject()
local SceneTitlePanel = script:GetCustomProperty("SceneTitlePanel"):WaitForObject()
local ControlsPanel = script:GetCustomProperty("ControlsPanel"):WaitForObject()
local CurrentValuesPanel = script:GetCustomProperty("CurrentValuesPanel"):WaitForObject()

-- deal with the on screen UI based on the checkboxes on the "OptionsForOnscreenDisplayElements" object
if GeneralInfoPanelVisibility == false then
	GeneralInfoTitlePanel.visibility = Visibility.FORCE_OFF
	GeneralInfoPanel.visibility = Visibility.FORCE_OFF
end
if SceneTitleBarVisibility == false then
	SceneTitlePanel.visibility = Visibility.FORCE_OFF
end
if Controls_UI_Panel_Visibility == false then
	ControlsPanel.visibility = Visibility.FORCE_OFF
	CurrentValuesPanel.y = 70
end
if CurrentValuesPanelVisibility == false then
	CurrentValuesPanel.visibility = Visibility.FORCE_OFF
end

-- set the initial height of the General Info Panel so it will expand properly on scene load
GeneralInfoPanel.height = 35

NegativePlaybackRateTooltipPanel.visibility = Visibility.FORCE_OFF
NegativePlaybackRateTooltipPanel02.visibility = Visibility.FORCE_OFF

local AnimatedMeshSelectionTriggerGroup = script:GetCustomProperty("AnimatedMeshSelectionTriggerGroup")

local mesh = nil
local mcud = nil
local playAnimTimeElapsed = 0
local playAnimSequenceLength = nil
local playAnimIsActive = false
local isResetAfterPlayAnim = true
local myPlayer = Game.GetLocalPlayer()
myPlayer.clientUserData.meshToUse = nil
local colorDefault = Color.New(0.1,0.475,1,1)
local colorPop = Color.New(1,1,1,1)
local colorGray = Color.New(0.5, 0.5, 0.5, 1)
local stanceChangeTimeElapsed = 0
local stanceSelectionChanged = false
local stanceLoopSelectionChanged = false
local stanceLoopChangeTimeElapsed = 0
local playAnimChangeTimeElapsed = 0
local playAnimSelectionChanged = false
local playAnimLoopSelectionChanged = false
local playAnimLoopChangeTimeElapsed = 0
local meshChangeTimeElapsed = 0
local meshSelectionChanged = false
local playRateChangeTimeElapsed = 0
local playRateChanged = false
local timeToReturnToNormal = 0.25
local displayWorldUI = true
local isShiftPressed = false

local ctrlPressHappened = true
local ctrlInteractionTimeElapsed = 0
local generalInfoPanelIsExpanding = true
local ctrlInteractionTimeElapsed = 0
local generalInfoPanelHeightWhenStateChanged = nil

function CreateMeshTriggers()
	-- Spawn and place an animatedMeshSelectionTrigger template in scene for each Animated Mesh.
	local animatedMeshesTable = AnimatedMeshesGroup:GetChildren()
	for i, k in pairs(animatedMeshesTable) do
		local triggerTemplate = World.SpawnAsset(AnimatedMeshSelectionTriggerGroup)
		triggerTemplate.parent = k
		triggerTemplate:SetPosition(Vector3.New(0,0,0))
		triggerTemplate:SetRotation(Rotation.New(0,0,0))
		local meshForwardDir = k:GetWorldTransform():GetForwardVector()
		local rayStart = (meshForwardDir:GetNormalized() * 200) + k:GetWorldPosition()
		local rayHitResult = World.Raycast(rayStart, rayStart + Vector3.New(0,0,-10000))
		
		if rayHitResult then	
			local trigger = triggerTemplate:GetCustomProperty("SelectionTrigger"):WaitForObject()
			trigger:SetWorldPosition(rayHitResult:GetImpactPosition())
		else
			UI.PrintToScreen("Please place " .. k.name.." closer to the ground and/or above it!!")
			warn("Please place " .. k.name.." closer to the ground and/or above it!!")
		end
	end
end

Task.Spawn(CreateMeshTriggers, 0.05)

function AlphabetizeTable(passedTable)
	local sortedTable = {}
	local sort_func = function( a,b ) return a < b end
	table.sort( passedTable, sort_func )
end

function Tick(delta_time)
	if myPlayer ~= nil then
		if mesh then
			-- Handle the position of the overhead ui panel display.
			local overheadPanelPos = UI.GetScreenPosition(mesh:GetWorldPosition()+Vector3.New(0,0,120))
			if overheadPanelPos then
				OverheadPanel.x = overheadPanelPos.x
				OverheadPanel.y = overheadPanelPos.y
			else
				-- If the intended creature is off screen, set overhead ui panel position to zero.
				OverheadPanel.x = 0
				OverheadPanel.y = 0
			end
		end
		if mesh ~= myPlayer.clientUserData.meshToUse then
			if mesh then
				mesh.clientUserData.selectionIndicator.visibility = Visibility.FORCE_OFF
			end
			mesh = myPlayer.clientUserData.meshToUse
			mcud = mesh.clientUserData
			mcud.selectionIndicator.visibility = Visibility.INHERIT
			-- If a mesh has never been selected before, initialize values for it.
			if mcud.isInitialized == nil then
				mcud.animTable = mesh:GetAnimationNames()
				AlphabetizeTable(mcud.animTable)
				mcud.stanceTable = mesh:GetAnimationStanceNames()
				AlphabetizeTable(mcud.stanceTable)
				mcud.isInitialized = true
				mcud.animIndex = 1
				mcud.stanceIndex = 1
				mcud.playRate = 1
				mcud.maxedPlayRate = 1
				mcud.playAnimLoop = false
				mcud.stanceLoop = true
				mcud.weaponInt = 0
				mcud.propsVisible = true
				mcud.isPaused = false
			else
				StopAndResetPlayAnimation()
			end
			-- Apply more values based on the current mesh selection and global values.
			mesh.animationStancePlaybackRate = mcud.playRate
			playAnimTimeElapsed = 0
			playAnimIsActive = false
			if #mcud.stanceTable ~= 0 then
				mesh.animationStance = mcud.stanceTable[mcud.stanceIndex]
				UpdateAnimationStrings(AnimStanceSelectedString, mcud.stanceTable[mcud.stanceIndex])
				OverheadAnimLabel.text = "animationStance:"
				OverheadAnimTextObject.text = mcud.stanceTable[mcud.stanceIndex]
				UpdateAnimationStrings(AnimStanceLoopTextObject, tostring(mcud.stanceLoop))
			else
				UpdateAnimationStrings(AnimStanceSelectedString, "Bad or missing string")
			end
			if #mcud.animTable ~= 0 then
				UpdateAnimationStrings(PlayAnimSelectedString, mcud.animTable[mcud.animIndex])
				UpdateAnimationStrings(PlayAnimLoopTextObject, tostring(mcud.playAnimLoop))
				playAnimSequenceLength = mesh:GetAnimationDuration(mcud.animTable[mcud.animIndex])
				if mcud.maxedPlayRate == 0 then 
					UpdateAnimationStrings(PlayAnimLengthData, "Infinite - playBackRate = 0")
				else
					UpdateAnimationStrings(PlayAnimTimeData, "Not Playing")
					UpdateAnimationStrings(PlayAnimLengthData, tostring(CoreMath.Round(playAnimSequenceLength/mcud.maxedPlayRate, 3)))
				end
			else
				UpdateAnimationStrings(AnimStanceSelectedString, "Bad or missing string")
			end
			-- Set all the variables for the flashing of text strings in UI.
			UpdateAnimationStrings(SelectedMeshString, mesh.name)
			meshChangeTimeElapsed = 0
			meshSelectionChanged = true
			UpdateAnimationStrings(PlaybackRateString, tostring(mcud.playRate))
			stanceChangeTimeElapsed = 0
			stanceSelectionChanged = true
			playAnimChangeTimeElapsed = 0
			playAnimSelectionChanged = true
			playRateChangeTimeElapsed = 0
			playRateChanged = true
			stanceLoopSelectionChanged = true
			stanceLoopChangeTimeElapsed = 0
			playAnimLoopSelectionChanged = true
			playAnimLoopChangeTimeElapsed = 0
			UpdateProps()
			UpdateCodeBlockText()
		end
		-- Handle the animation timer display element.
		if playAnimIsActive == true and mcud.isPaused == false then
			playAnimTimeElapsed = (playAnimTimeElapsed + delta_time)
			local tickProg = 0
			if mcud.maxedPlayRate ~= 0 then
				tickProg = playAnimTimeElapsed/(playAnimSequenceLength/mcud.maxedPlayRate)
			end
			AnimTickDisplay.x = CoreMath.Lerp(5, 375, tickProg)
			OverheadAnimTickDisplay.x = CoreMath.Lerp(6, 394, tickProg)
			if tickProg >= 1 then 
				if mcud.playAnimLoop == false then
					playAnimIsActive = false
					UpdateProps()
				elseif mcud.playAnimLoop == true then
					playAnimTimeElapsed = 0
				end
			end
			-- Handle displaying appropriate text based on the value of the playback rate setting.
			if mcud.maxedPlayRate == 0 then
				PlayAnimTimeData.text = "PlaybackRate = 0"
			else
				PlayAnimTimeData.text = tostring(CoreMath.Round(playAnimTimeElapsed, 3))
			end
			-- Show tooltip if playrate is negative.
			if mcud.playRate < 0 then
				NegativePlaybackRateTooltipPanel02.visibility = Visibility.INHERIT
			else
				NegativePlaybackRateTooltipPanel02.visibility = Visibility.FORCE_OFF
			end
		elseif playAnimIsActive == false and isResetAfterPlayAnim == false then
			AnimTickDisplay.x = 5
			OverheadAnimTickDisplay.x = 6
			PlayAnimTimeData.text = "Not Playing"
			OverheadAnimLabel.text = "animationStance:"
			OverheadAnimTextObject.text = mcud.stanceTable[mcud.stanceIndex]
			stanceSelectionChanged = true
			stanceChangeTimeElapsed = 0
			isResetAfterPlayAnim = true
		end
		-- Handle the color change timer for mesh selection.
		if meshSelectionChanged == true then
			meshChangeTimeElapsed = meshChangeTimeElapsed + delta_time
			local colorProgress = meshChangeTimeElapsed/timeToReturnToNormal
			if colorProgress >=1 then
				meshSelectionChanged = false
			end
			local currentTextColor = Color.Lerp(colorPop, colorDefault, colorProgress)
			SelectedMeshString:SetColor(currentTextColor)
		end
		-- Handle the color change timer for PlaybackRate.
		if playRateChanged == true then
			playRateChangeTimeElapsed = playRateChangeTimeElapsed + delta_time
			local colorProgress = playRateChangeTimeElapsed/timeToReturnToNormal
			local currentTextColor = Color.Lerp(colorPop, colorDefault, colorProgress)
			PlaybackRateString:SetColor(currentTextColor)
			-- Inform about negative play rate behavior for animationStance.
			if mcud.playRate < 0 then
				NegativePlaybackRateTooltipPanel.visibility = Visibility.INHERIT
			else
				NegativePlaybackRateTooltipPanel.visibility = Visibility.FORCE_OFF
				NegativePlaybackRateTooltipPanel02.visibility = Visibility.FORCE_OFF
			end
			if colorProgress >=1 then
				playRateChanged = false
			end
		end
		-- Handle the color change timer for animationStance selection in Current Values Panel.
		if stanceSelectionChanged == true then
			stanceChangeTimeElapsed = stanceChangeTimeElapsed + delta_time			
			local colorProgress = stanceChangeTimeElapsed/timeToReturnToNormal
			if colorProgress >=1 then
				stanceSelectionChanged = false
			end
			local currentTextColor = Color.Lerp(colorPop, colorDefault, colorProgress)
			AnimStanceSelectedString:SetColor(currentTextColor)
			if playAnimIsActive == false then

				OverheadAnimTextObject.text = mcud.stanceTable[mcud.stanceIndex]
				OverheadAnimTextObject:SetColor(currentTextColor)
			end
		end
		-- Handle the color change timer for animationStance LOOP in Current Values Panel.
		if stanceLoopSelectionChanged == true then
			stanceLoopChangeTimeElapsed = stanceLoopChangeTimeElapsed + delta_time			
			local colorProgress = stanceLoopChangeTimeElapsed/timeToReturnToNormal
			if colorProgress >=1 then
				stanceLoopSelectionChanged = false
			end
			local currentTextColor = Color.Lerp(colorPop, colorGray, colorProgress)
			AnimStanceLoopTextObject:SetColor(currentTextColor)
		end
		-- Handle the color change timer for PlayAnimation LOOP in Current Values Panel.
		if playAnimLoopSelectionChanged == true then
			playAnimLoopChangeTimeElapsed = playAnimLoopChangeTimeElapsed + delta_time			
			local colorProgress = playAnimLoopChangeTimeElapsed/timeToReturnToNormal
			if colorProgress >=1 then
				playAnimLoopSelectionChanged = false
			end
			local currentTextColor = Color.Lerp(colorPop, colorGray, colorProgress)
			PlayAnimLoopTextObject:SetColor(currentTextColor)
		end
		-- Handle the color change timer for PlayAnimation selection in Current Values Panel.
		if playAnimSelectionChanged == true then
			playAnimChangeTimeElapsed = playAnimChangeTimeElapsed + delta_time
			local colorProgress = playAnimChangeTimeElapsed/timeToReturnToNormal
			if colorProgress >=1 then
				playAnimSelectionChanged = false
			end
			local currentTextColor = Color.Lerp(colorPop, colorDefault, colorProgress)
			PlayAnimSelectedString:SetColor(currentTextColor)
			if playAnimIsActive == true then
				OverheadAnimTextObject:SetColor(currentTextColor)
			end
		end
		-- Handle General Info Panel behavior/motion.
		if ctrlPressHappened == true then
			if ctrlInteractionTimeElapsed == 0 then
				generalInfoPanelHeightWhenStateChanged = GeneralInfoPanel.height
			end
			ctrlInteractionTimeElapsed = ctrlInteractionTimeElapsed +delta_time
			local curveAdjustment = 2.5
			local generalInfoPanelHeightProgress = (ctrlInteractionTimeElapsed^curveAdjustment)/((ctrlInteractionTimeElapsed^curveAdjustment) + (1 - ctrlInteractionTimeElapsed)^curveAdjustment)
			
			-- dDal with -nan(ind) error state when it gets past 1.
			if generalInfoPanelHeightProgress ~= generalInfoPanelHeightProgress then
				generalInfoPanelHeightProgress = 1
			end
			math.min(generalInfoPanelHeightProgress, 1)			
			
			if generalInfoPanelIsExpanding == true then
				GeneralInfoPanel.height = math.min(CoreMath.Round(CoreMath.Lerp(generalInfoPanelHeightWhenStateChanged, 750, generalInfoPanelHeightProgress)), 750)
			elseif generalInfoPanelIsExpanding == false then
				GeneralInfoPanel.height = math.max(CoreMath.Round(CoreMath.Lerp(generalInfoPanelHeightWhenStateChanged, 35, generalInfoPanelHeightProgress)), 35)
			end
			if generalInfoPanelHeightProgress >= 1 then
				ctrlPressHappened = false
			end
		end	
	
		-- Handle the color throb on the Ctrl Text.
		local throbProgress = 0
		if generalInfoPanelIsExpanding then
			throbProgress = math.sin(time()*8)
		else
			throbProgress = math.sin(time()*2)
		end
		throbProgress = (throbProgress+1)/2
		CtrlTip:SetColor(Color.Lerp(Color.New(0.1,0.1,0.1,1), Color.New(.7,.7,.7,1), (throbProgress)))	
	end
end

function UpdateCodeBlockText()
	if mesh then
		CodeDumpText01.text = "mesh:PlayAnimation(" .. '"'..mcud.animTable[mcud.animIndex].. '"' ..", {playbackRate = ".. tostring(mcud.maxedPlayRate) .. ", shouldLoop = ".. tostring(mcud.playAnimLoop) .."})"
		CodeDumpText02.text = "mesh.animationStance = "..tostring(mcud.stanceTable[mcud.stanceIndex])
		CodeDumpText03.text = "mesh.animationStancePlaybackRate = " .. tostring(mcud.playRate)
		CodeDumpText04.text = "mesh.animationStanceShouldLoop = " .. tostring(mcud.stanceLoop)
	end
end

function UpdateTimer(whichBool, whichTimeElapsed, whichText)
	local colorProgress = whichTimeElapsed/timeToReturnToNormal
	if colorProgress >=1 then
		whichBool = false
	end
	local currentTextColor = Color.Lerp(colorPop, colorDefault, colorProgress)
	whichText:SetColor(currentTextColor)
end

function UpdateAnimationStrings(whichStringObject, string)
	whichStringObject.text = string
end

function HideProps()
	for key, value in pairs(mcud.propsTable) do
		value.visibility = Visibility.FORCE_OFF
	end
end

function UpdateProps()
	local allowProps = false
	--[[
	The following is based on the socket names, and assumes that if an Animated Mesh
	has a "right prop" it also has a left prop and should accept "human" weapons.
	--]]
	local socketTable = mesh:GetSocketNames()
	for i, name in pairs(socketTable) do
		if name ==  "right_prop" then
		allowProps = true
		break
		end
	end
	if allowProps == true then
		local stringToSearch = "" 
		if playAnimIsActive then
			stringToSearch = mcud.animTable[mcud.animIndex]
		else
			stringToSearch = mcud.stanceTable[mcud.stanceIndex]
		end
		HideProps()
		if mcud.propsVisible == true then
			-- These string.matches are based on anim names and are less fragile than the above.
			if string.match(stringToSearch, "1hand_melee_") then
		 		mcud.propsTable.geo1HandMeleeWeapon.visibility = Visibility.FORCE_ON
		 		mcud.propsTable.geo1HandMeleeShield.visibility = Visibility.FORCE_ON
		 	elseif string.match(stringToSearch, "1hand_pistol_") then
		 		mcud.propsTable.geo1HandPistol.visibility = Visibility.FORCE_ON
		 	elseif string.match(stringToSearch, "2hand_rifle_") then
		 		mcud.propsTable.geo2HandRifle.visibility = Visibility.FORCE_ON
		 	elseif string.match(stringToSearch, "2hand_staff_") then
		 		mcud.propsTable.geo2HandStaff.visibility = Visibility.FORCE_ON
		 	elseif string.match(stringToSearch, "2hand_sword_") then
		 		mcud.propsTable.geo2HandSword.visibility = Visibility.FORCE_ON
			end
		end
	end
end

function CycleAnimationStanceOnMesh()
	-- Increment or decrement stance index.
	if isShiftPressed == false then
		mcud.stanceIndex = mcud.stanceIndex + 1
	else
		mcud.stanceIndex = mcud.stanceIndex - 1
	end
	-- Wrap around to the beginning of the list if the indices are exceeded.
	if mcud.stanceIndex > #mcud.stanceTable then
		mcud.stanceIndex = 1
	end
	-- Wrap around to the end of the list if the index gets to 0 or less.
	if mcud.stanceIndex < 1 then
		mcud.stanceIndex = #mcud.stanceTable 
	end
	mcud.stanceIndex = mcud.stanceIndex
	-- Set variables for the strings to flash and change in the UI.
	stanceSelectionChanged = true
	stanceChangeTimeElapsed = 0
	mesh.animationStance = mcud.stanceTable[mcud.stanceIndex]
	UpdateAnimationStrings(AnimStanceSelectedString, mcud.stanceTable[mcud.stanceIndex])
	if playAnimIsActive == false then
		OverheadAnimLabel.text = "animationStance:"
		OverheadAnimTextObject.text = mcud.stanceTable[mcud.stanceIndex]
		UpdateProps()
	end
end

function CyclePlayAnimationOnMesh()
	--Increment or decrement play anim index.
	if isShiftPressed == false then
		mcud.animIndex = mcud.animIndex + 1
	else
		mcud.animIndex = mcud.animIndex - 1
	end
	-- Wrap around to the beginning of the list if the indices are exceeded.
	if mcud.animIndex > #mcud.animTable then
		mcud.animIndex = 1
	end
	-- Wrap around to the end of the list if the index gets to 0 or less.
	if mcud.animIndex < 1 then
		mcud.animIndex = #mcud.animTable
	end
	-- Set variables for the strings to flash and change in the UI.
	playAnimSelectionChanged = true
	playAnimChangeTimeElapsed = 0
	ApplyPlayAnimation()
	UpdateAnimationStrings(PlayAnimSelectedString, mcud.animTable[mcud.animIndex])
	if mcud.maxedPlayRate == 0 then 
		UpdateAnimationStrings(PlayAnimLengthData, "Infinite - playBackRate = 0")
	else
		UpdateAnimationStrings(PlayAnimLengthData, tostring(CoreMath.Round(playAnimSequenceLength/mcud.maxedPlayRate, 3)))
	end
end

function ApplyPlayAnimation()
	mesh:PlayAnimation(mcud.animTable[mcud.animIndex], {playbackRate = mcud.maxedPlayRate, shouldLoop = mcud.playAnimLoop})

	-- Update variables for the various strings in the UI.
	playAnimSequenceLength = mesh:GetAnimationDuration(mcud.animTable[mcud.animIndex])
	playAnimSelectionChanged = true
	playAnimChangeTimeElapsed = 0
	playAnimIsActive = true
	playAnimTimeElapsed = 0
	OverheadAnimLabel.text = "PlayAnimation:"
	OverheadAnimTextObject.text = mcud.animTable[mcud.animIndex]
	isResetAfterPlayAnim = false
	UpdateProps()
end

function StopAndResetPlayAnimation()
	mesh:StopAnimations()
	playAnimTimeElapsed = 0
	playAnimIsActive = false
	UpdateProps()
end

function PrintToLog()
	if mesh ~= nil then
		print(">---------------------------------------------------------------------------")
		print("mesh:PlayAnimation(" .. '"'..mcud.animTable[mcud.animIndex].. '"' ..", {playbackRate = ".. tostring(mcud.maxedPlayRate) .. ", shouldLoop = ".. tostring(mcud.playAnimLoop) .."})")
		print("mesh.animationStance = "..tostring(mcud.stanceTable[mcud.stanceIndex]))
		print("mesh.animationStancePlaybackRate = " .. tostring(mcud.playRate))
		print("mesh.animationStanceShouldLoop = " .. tostring(mcud.stanceLoop))
	end
end

function OnBindingPressed(whichPlayer, binding)
	-- 1 button - Next/Previous animationStance in the table.
	if (binding == "ability_extra_1") and mesh ~= nil then 
		CycleAnimationStanceOnMesh()
	-- 2 button - NEct/Previous PlayAnimation in the table.
	elseif (binding == "ability_extra_2") and mesh ~= nil then 
		CyclePlayAnimationOnMesh()
	-- Left mouse button - Apply Current PlayAnimation.
	elseif (binding == "ability_primary") and mesh ~= nil then
		ApplyPlayAnimation()
	-- Right mouse button - Cancel Current PlayAnimation.
	elseif (binding == "ability_secondary") and mesh ~= nil then
		StopAndResetPlayAnimation()
	-- R button - Raise/Lower PlaybackRate
	elseif (binding == "ability_extra_23") and mesh ~= nil then
		-- Interrupt current PlayAnimation in order to keep values consistent with visuals.
		StopAndResetPlayAnimation()
		if isShiftPressed == false then
			-- Increment playRate and handle the near zero rounding error from Floats.
			mcud.playRate = ((mcud.playRate*10) + 1)/10
		else
			-- Decrement playRate and handle the near zero rounding error from Floats.
			mcud.playRate = ((mcud.playRate*10) - 1)/10		
		end
		playRateChanged = true
		playRateChangeTimeElapsed = 0
		-- Apply the playRate to animationStances immediately.
		mesh.animationStancePlaybackRate = mcud.playRate
		-- Handle negative play rates for PlayAnimation info, since they cannot support negative values, but animationStances can.
		mcud.maxedPlayRate = math.max(0, mcud.playRate)
		-- Update the affected UI string values.
		if mcud.maxedPlayRate == 0 then 
			UpdateAnimationStrings(PlayAnimLengthData, "Infinite - playBackRate = 0")
		else
			UpdateAnimationStrings(PlayAnimLengthData, tostring(CoreMath.Round(playAnimSequenceLength/mcud.maxedPlayRate, 3)))
		end
		UpdateAnimationStrings(PlaybackRateString, tostring(mcud.playRate))
	-- i button - Toggle 3d World UI Element Visibility.
	elseif (binding == "ability_extra_27") and mesh ~= nil then
		if displayWorldUI == false then
			OverheadPanel.visibility = Visibility.INHERIT
			displayWorldUI = true
		else
			OverheadPanel.visibility = Visibility.FORCE_OFF
			displayWorldUI = false
		end
	-- L button - Toggle Looping for animationStances and PlayAnimations.
	elseif (binding == "ability_extra_38") and mesh ~= nil then
		if isShiftPressed then
			mcud.playAnimLoop = not mcud.playAnimLoop
			ApplyPlayAnimation()
			UpdateAnimationStrings(PlayAnimLoopTextObject, tostring(mcud.playAnimLoop))
			playAnimLoopSelectionChanged = true
			playAnimLoopChangeTimeElapsed = 0
		else
			mcud.stanceLoop = not mcud.stanceLoop
			mesh.animationStanceShouldLoop = mcud.stanceLoop
			UpdateAnimationStrings(AnimStanceLoopTextObject, tostring(mcud.stanceLoop))
			stanceLoopSelectionChanged = true
			stanceLoopChangeTimeElapsed = 0
		end
	-- V button - Toggle Example Props Visibility.
	elseif (binding == "ability_extra_42") and mesh ~= nil then
		mcud.propsVisible = not mcud.propsVisible
		UpdateProps()
	-- o button - Print Code Snippets to Event log. This ONLY works in PREVIEW MODE. (not Multiplayer Mode)	
	elseif (binding == "ability_extra_28") and mesh ~= nil then
		PrintToLog()
	--[[ P button - Pause test, discovered an issue and will revisit this if the behavior is updated	
	elseif (binding == "ability_extra_29") and mesh ~= nil then
		
		mcud.isPaused = not mcud.isPaused
		
		if mcud.isPaused == true then
			mesh.playbackRateMultiplier = 0
		else
			mesh.playbackRateMultiplier = 1
		end
	--]]
	end
	
	
	-- Shift button - Modify many of the controls above.
	if (binding == "ability_extra_12") then 
		isShiftPressed = true
	end
	
	--ctrl button - expand general info panel.
	if (binding == "ability_extra_10") then 
		ctrlPressHappened = true
		ctrlInteractionTimeElapsed = 0
		generalInfoPanelIsExpanding = not generalInfoPanelIsExpanding
		
		if generalInfoPanelIsExpanding then
			CtrlTip.text = "Press Ctrl to Hide"
		else
			CtrlTip.text = "Press Ctrl to Expand"		
		end
	end	
	UpdateCodeBlockText()
end

function OnBindingReleased(whichPlayer, binding)
	-- Shift released.
	if (binding == "ability_extra_12") then 
		isShiftPressed = false
	end
end

function OnPlayerJoined(player)
	-- Hook up binding in player joined event here.
	player.bindingPressedEvent:Connect(OnBindingPressed)
	player.bindingReleasedEvent:Connect(OnBindingReleased)
end

-- On player joined/left functions need to be defined before calling event:Connect()
Game.playerJoinedEvent:Connect(OnPlayerJoined)