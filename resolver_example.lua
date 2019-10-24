local function resolver(player)
    local animstate = player:GetAnimState()
    local missed = player:GetMissedShots()

    --animstate.m_flGoalFeetYaw = ur magic value
end

client.RegisterCallback("player_resolver", resolver)