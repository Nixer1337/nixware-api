-- by https://vk.com/neverborn
local font = surface.SetupFont("Droid Sans", 10, 800, 0, 0, 0x200);

local frame_rate = 0.0
local get_abs_fps = function()
    frame_rate = 0.9 * frame_rate + (1.0 - 0.9) * globalvars.absoluteframetime()
    return math.floor((1.0 / frame_rate) + 0.5)
end

local kills  = {}
local deaths = {}

local function KillDeathCount(event)

	local local_player = engine.GetLocalPlayer( );
	local INDEX_Attacker = engine.GetPlayerIndexByUserID( event:GetInt( 'attacker' ) );
	local INDEX_Victim = engine.GetPlayerIndexByUserID( event:GetInt( 'userid' ) );

	if (event:GetName( ) == "client_disconnect") or (event:GetName( ) == "begin_new_match") then
		kills = {}
		deaths = {}
	end

	if event:GetName( ) == "player_death" then
		if INDEX_Attacker == local_player then
			kills[#kills + 1] = {};
		end
		
		if (INDEX_Victim == local_player) then
			deaths[#deaths + 1] = {};
		end

	end
end

function paint_traverse()
	local x, y = engine.GetScreenSize()
    local centerX = x / 2


	surface.DrawSetColor(0, 0, 0, 200)
	surface.DrawFilledRectFade(centerX - 200, y - 20, centerX - 50, y, 0, 255, true)
	surface.DrawFilledRectFade(centerX - 200, y - 20, centerX - 50, y - 19, 0, 255, true)
	
	surface.DrawSetColor(0, 0, 0, 200)
    surface.DrawFilledRect(centerX - 50, y - 20, centerX + 50, y)
    surface.DrawSetColor(0, 0, 0, 255)
    surface.DrawFilledRect(centerX - 50, y - 20, centerX + 50, y - 19)
	
	surface.DrawSetColor(0, 0, 0, 200)
	surface.DrawFilledRectFade(centerX + 50, y - 20, centerX + 200, y, 255, 0, true)
	surface.DrawFilledRectFade(centerX + 50, y - 20, centerX + 200, y - 19, 255, 0, true)

	-- fps
	
	surface.DrawSetTextFont(font)
    surface.DrawSetTextColor(200, 255, 0, 255)
    surface.DrawSetTextPos(centerX + 10, y - 15)
	surface.DrawPrintText("FPS")
	
	surface.DrawSetTextFont(font)
    surface.DrawSetTextColor(255, 255, 255, 255)
    surface.DrawSetTextPos(centerX - 10, y - 15)
	surface.DrawPrintText(get_abs_fps())
	
	-- fps 
	
	
	-- kills
	
	surface.DrawSetTextFont(font)
    surface.DrawSetTextColor(255, 255, 255, 255)
    surface.DrawSetTextPos(centerX - 70, y - 15)
	surface.DrawPrintText(#kills)
	
	surface.DrawSetTextFont(font)
    surface.DrawSetTextColor(255, 100, 0, 255)
    surface.DrawSetTextPos(centerX - 55, y - 15)
	surface.DrawPrintText("Kills")
	
	-- kills
    
	
	-- deaths
	
	surface.DrawSetTextFont(font)
    surface.DrawSetTextColor(255, 255, 255, 255)
    surface.DrawSetTextPos(centerX + 50, y - 15)
	surface.DrawPrintText(#deaths)
	
	surface.DrawSetTextFont(font)
    surface.DrawSetTextColor(255, 50, 50, 255)
    surface.DrawSetTextPos(centerX + 65, y - 15)
	surface.DrawPrintText("Deaths")
end

client.RegisterCallback("paint_traverse", paint_traverse)
client.RegisterCallback("fire_game_event", KillDeathCount)