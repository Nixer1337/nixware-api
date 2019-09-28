local function event_listener(event)
    if event:GetName() == "round_start" then
        local localTeam = entitylist.GetPlayerByIndex(engine.GetLocalPlayer()):GetTeamNum()

        engine.ExecuteClientCmd("buy smokegrenade")
        engine.ExecuteClientCmd("buy hegrenade")
        engine.ExecuteClientCmd("buy taser")
        engine.ExecuteClientCmd("buy elite")

        if localTeam == 3 then
            engine.ExecuteClientCmd("buy scar20")
            engine.ExecuteClientCmd("buy incgrenade")
            engine.ExecuteClientCmd("buy defuser")
        elseif localTeam == 2 then
            engine.ExecuteClientCmd("buy g3sg1")
            engine.ExecuteClientCmd("buy molotov")
        end
    end
end

client.RegisterCallback("firegameevent", event_listener)
