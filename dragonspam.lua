local function event_listener(event)
    if event:GetName() == "player_death" then
        local attacker = engine.GetPlayerForUserID(event:GetInt("attacker"))
        local dead = engine.GetPlayerForUserID(event:GetInt("userid"))
        local me = engine.GetLocalPlayer()

        if attacker == me and dead ~= me then
            local entity = entitylist.GetPlayerByIndex(dead)
            engine.ExecuteClientCmd("say " .. entity:GetName() .. ", ты кто ннчик? Я драгонфикс. SkeetUser.");
        end
    end
end

client.RegisterCallback("firegameevent", event_listener)