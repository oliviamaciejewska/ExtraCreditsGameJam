local healTrigger = script.parent
local team = nil
function OnInteracted(healTrigger, player)
	team = player.team
	healTrigger.isInteractable = false
end

healTrigger.interactedEvent:Connect(OnInteracted)

function Tick(deltaTime)

   if team then
   		Game.SetTeamScore(team, 100)
   end

end
    
function OnTeamScoreChanged(team)
    local score = Game.GetTeamScore(team)
    print("Score changed for team " .. team .. ", new value = " .. score)
end

Game.teamScoreChangedEvent:Connect(OnTeamScoreChanged)