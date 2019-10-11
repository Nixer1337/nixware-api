Nixware - Counter Strike: Global Offensive
=========================

## API For Lua Scripts (LuaJIT Supported)

[mdl.ReplacePath](#mdlReplacePath)

[ui.Checkbox](#uiCheckbox)

[ui.SliderInt](#uiSliderInt)

[ui.SliderFloat](#uiSliderFloat)

[ui.KeyBind](#uikeybind)

[ui.GetBool](#uiGetBool)

[ui.GetInt](#uiGetInt)

[ui.GetFloat](#uiGetFloat)

[ui.SetBool](#uiSetBool)

[ui.SetInt](#uiSetInt)

[ui.SetFloat](#uiSetFloat)

[surface.GetCursorPos](#surfaceGetCursorPos)

[surface.SetupFont](#surfaceSetupFont)

[surface.DrawFilledRect](#surfaceDrawFilledRect)

[surface.DrawFilledRectFade](#surfaceDrawFilledRectFade)

[surface.DrawOutlinedRect](#surfaceDrawOutlinedRect)

[surface.DrawSetColor](#surfaceDrawSetColor)

[surface.GetTextSize](#surfaceGetTextSize)

[surface.DrawLine](#surfaceDrawLine)

[surface.DrawOutlinedCircle](#surfaceDrawOutlinedCircle)

[surface.DrawSetTextFont](#surfaceDrawSetTextFont)

[surface.DrawSetTextColor](#surfaceDrawSetTextColor)

[surface.DrawSetTextPos](#surfaceDrawPrintText)

[surface.DrawPrintText](#surfaceDrawPrintText)

[engine.GetLevelNameShort](#engineGetLevelNameShort)

[engine.GetPlayerIndexByUserID](#engineGetPlayerIndexByUserID)

[engine.GetLocalPlayer](#engineGetLocalPlayer)

[engine.GetScreenSize](#engineGetScreenSize)

[engine.GetViewAngles](#engineGetViewAngles)

[engine.SetViewAngles](#engineSetViewAngles)

[engine.IsConnected](#engineIsConnected)

[engine.IsInGame](#engineIsInGame)

[engine.ExecuteClientCmd](#engineExecuteClientCmd)

[clientstate.ForceFullUpdate](#clientstateForceFullUpdate)

[clientstate.chokedcommands](#clientstatechokedcommands)

[globalvars.realtime](#globalvarsrealtime)

[globalvars.framecount](#globalvarsframecount)

[globalvars.absoluteframetime](#globalvarsabsoluteframetime)

[globalvars.absoluteframestarttimestddev](#globalvarsabsoluteframestarttimestddev)

[globalvars.curtime](#globalvarscurtime)

[globalvars.frametime](#globalvarsframetime)

[globalvars.maxClients](#globalvarsmaxClients)

[globalvars.tickcount](#globalvarstickcount)

[globalvars.interval_per_tick](#globalvarsinterval_per_tick)

[globalvars.interpolation_amount](#globalvarsinterpolation_amount)

[client.IsValveDS](#clientIsValveDS)

[client.IsKeyPressed](#clientIsKeyPressed)

[client.IsVisible](#clientIsVisible)

[client.GetTimeStamp](#clientGetTimeStamp)

[client.GetSystemTime](#clientGetSystemTime)

[client.GetFOV](#clientGetFOV)

[client.GetLatency](#clientGetLatency)

[client.GetUsername](#clientGetUsername)

[client.GetConvar](#clientGetConvar)

[client.GetSendPacket](#clientGetSendPacket)

[client.SetSendPacket](#clientSetSendPacket)

[client.SetClantag](#clientSetClantag)

[client.SetName](#clientSetName)

[client.RegisterCallback](#clientRegisterCallback)

[client.Notification](#clientNotification)

[client.AddToRadioList](#clientAddToRadioList)

[client.RandomInt](#clientRandomInt)

[client.RandomFloat](#clientRandomFloat)

[client.LoadScript](#clientLoadScript)

[client.UnloadScript](#clientUnloadScript)

[client.LoadConfig](#clientLoadConfig)

[client.WorldToScreen](#clientWorldToScreen)

[client.CalcAngle](#clientCalcAngle)

[client.FindIDAPattern](#clientFindIDAPattern)

[client.FindCodePattern](#clientFindCodePattern)

[entitylist.GetPlayerByIndex](#entitylistGetPlayerByIndex)

[entitylist.GetWeaponByIndex](#entitylistGetWeaponByIndex)

[entitylist.GetEntityByIndex](#entitylistGetEntityByIndex)

[entitylist.GetHighestEntityIndex](#entitylistGetHighestEntityIndex)

[entitylist.GetLocalPlayer](#entitylistGetLocalPlayer)

[entitylist.GetPlayers](#entitylistGetPlayers)

[entitylist.GetEntitiesByClass](#entitylistGetEntitiesByClass)

[entitylist.GetEntitiesByClassID](#entitylistGetEntitiesByClassID)

[netchannel.SetTimeout](#netchannelSetTimeout)

[netchannel.RequestFile](#netchannelRequestFile)

Player class
--------------------------
```lua
Player:IsValidPtr()
Player:IsPlayer()
Player:IsDormant()
Player:IsFlashed()
Player:IsLocalPlayer()
Player:IsTeammate()
Player:IsScoped()
Player:GetIndex()
Player:GetHealth()
Player:GetAbsOrigin()
Player:GetOrigin()
Player:GetMoney()
Player:GetMoveType()
Player:GetEyePos()
Player:GetName()
Player:GetAngles()
Player:GetTeamNum()
Player:GetWeapon()
Player:GetBoundingBox()
Player:GetStaticBox()
Player:GetHitboxPos(int hitbox)
Player:GetSteamID64()
Player:GetDormantAlpha()
Player:GetAbsVelocity()
Player:GetVelocity()
Player:GetSimulationTime()
Player:GetOldSimulationTime()
Player:GetPropBool(string prop)
Player:GetPropInt(string prop)
Player:GetPropFloat(string prop)
Player:GetPropDouble(string prop)
Player:GetPropShort(string prop)
Player:GetPropVector(string prop)
Player:GetPropAngle(string prop)
Player:SetPropInt(string prop, int i)
Player:SetPropShort(string prop, short i)
Player:SetPropAngle(string prop, QAngle ang)
Player:SetPropDouble(string prop, double i)
Player:SetPropBool(string prop, bool i)
Player:SetPropFloat(string prop, float i)
Player:SetPropVector(string prop, Vector i)
```

Weapon class
--------------------------
```lua
Weapon:IsValidPtr()
Weapon:IsKnife()
Weapon:IsGrenade()
Weapon:IsZeus()
Weapon:IsReloading()
Weapon:GetIndex()
Weapon:GetSpread()
Weapon:GetInaccuracy()
Weapon:GetAbsOrigin()
Weapon:GetOrigin()
Weapon:GetName()
Weapon:GetZoomLevel()
Weapon:GetNextPrimaryAttack()
Weapon:GetNextSecondaryAttack()
Weapon:GetItemDefinitionIndex()
Weapon:GetBoundingBox()
Weapon:GetStaticBox()
Weapon:GetPropBool(string prop)
Weapon:GetPropInt(string prop)
Weapon:GetPropFloat(string prop)
Weapon:GetPropDouble(string prop)
Weapon:GetPropShort(string prop)
Weapon:GetPropVector(string prop)
Weapon:GetPropAngle(string prop)
Weapon:SetPropInt(string prop, int i)
Weapon:SetPropShort(string prop, short i)
Weapon:SetPropAngle(string prop, QAngle ang)
Weapon:SetPropDouble(string prop, double i)
Weapon:SetPropBool(string prop, bool i)
Weapon:SetPropFloat(string prop, float i)
Weapon:SetPropVector(string prop, Vector i)
```

Entity class
--------------------------
```lua
Entity:IsValidPtr()
Entity:GetIndex()
Entity:GetBoundingBox()
Entity:GetStaticBox()
Entity:GetPropBool(string prop)
Entity:GetPropInt(string prop)
Entity:GetPropFloat(string prop)
Entity:GetPropDouble(string prop)
Entity:GetPropShort(string prop)
Entity:GetPropVector(string prop)
Entity:GetPropAngle(string prop)
Entity:SetPropInt(string prop, int i)
Entity:SetPropShort(string prop, short i)
Entity:SetPropAngle(string prop, QAngle ang)
Entity:SetPropDouble(string prop, double i)
Entity:SetPropBool(string prop, bool i)
Entity:SetPropFloat(string prop, float i)
Entity:SetPropVector(string prop, Vector i)
```

Convar class
--------------------------
```lua
Convar:GetBool()
Convar:GetInt()
Convar:GetFloat()
Convar:GetString()
Convar:SetBool(bool v)
Convar:SetInt(int v)
Convar:SetFloat(float v)
Convar:SetString(string v)
```

Event class
--------------------------
```lua
Event:GetName()
Event:GetBool()
Event:GetInt()
Event:GetFloat()
Event:GetString()
```

UserCmd class
--------------------------
```lua
UserCmd.command_number
UserCmd.tick_count
UserCmd.aimdirection
UserCmd.forwardmove
UserCmd.sidemove
UserCmd.upmove
UserCmd.buttons
UserCmd.impulse
UserCmd.weaponselect
UserCmd.weaponsubtype
UserCmd.random_seed
UserCmd.mousedx
UserCmd.mousedy
UserCmd.hasbeenpredicted
```

QAngle class
--------------------------
```lua
QAngle.pitch
QAngle.yaw
QAngle.roll
QAngle:Length()
QAngle:LengthSqr()
QAngle:IsZero(float tolerance = 0.01f)
QAngle:Normalize()
```

Vector class
--------------------------
```lua
Vector.x
Vector.y
Vector.z
Vector:Length()
Vector:LengthSqr()
Vector:Length2D()
Vector:Length2DSqr()
Vector:IsZero(float tolerance = 0.01f)
Vector:IsValid()
Vector:Zero()
Vector:DistTo(const Vector &vOther)
Vector:DistToSqr(const Vector &vOther)
Vector:Cross(const Vector& vOther)
Vector:Normalize()
```

RECT class
--------------------------
```lua
RECT.left
RECT.top
RECT.right
RECT.bottom
```

mdl.ReplacePath
------------------
  ```lua
  -- model1, model2
  local function model_changer()
    -- replaces model1 to model2
    mdl.ReplacePath("knife_default_ct.mdl", "models/weapons/v_minecraft_pickaxe.mdl")
    mdl.ReplacePath("knife_default_t.mdl", "models/weapons/v_minecraft_pickaxe.mdl")
  end
  client.RegisterCallback("find_mdl", model_changer)
  ```

ui.Checkbox
------------------
  ```lua
  -- Label, variable name, default value
  ui.Checkbox("Label", "b_variable", false)
  ui.GetBool("b_variable") -- returns the checkbox state
  ```

ui.SliderInt
------------------
  ```lua
  -- Label, variable name, min value, max value, default value
  ui.SliderInt("Label", "i_variable", 0, 10, 0)
  ui.GetInt("i_variable") -- returns the slider value
  ```

ui.SliderFloat
------------------
  ```lua
  -- Label, variable name, min value, max value, default value
  ui.SliderFloat("Label", "flt_variable", 0.0, 10.0, 0.0)
  ui.GetFloat("flt_variable") -- returns the slider value
  ```

ui.KeyBind
------------------
  ```lua
  ui.KeyBind("Label", "i_key", 0.0, 10.0, 0.0) -- Label, variable name

  local key = ui.GetInt("i_key") -- returns the key
  client.IsKeyPressed(key) -- returns the pressed state
  ```

ui.GetBool
------------------
  ```lua
  local var = ui.GetBool("var") -- returns the added variable state
  ```

ui.GetInt
------------------
  ```lua
  local var = ui.GetInt("var") -- returns the added variable value
  ```

ui.GetFloat
------------------
  ```lua
  local var = ui.GetFloat("var") -- returns the added variable value
  ```

ui.SetBool
------------------
  ```lua
  ui.SetBool("var", true) -- setting the added variable state
  ```

ui.SetInt
------------------
  ```lua
  ui.SetInt("var", 5) -- setting the added variable value
  ```

ui.SetFloat
------------------
  ```lua
  ui.SetFloat("var", 5.0) -- setting the added variable value
  ```

surface.GetCursorPos
------------------
  ```lua
  local x, y = surface.GetCursorPos() -- returns the cursor position
  ```

surface.SetupFont
------------------
  ```lua
  -- fontname, tall, weight, blur, scanlines, flags
  local font = surface.SetupFont("Tahoma", 16, 500, 0, 1, 0x200) 
  -- surface font flags: https://developer.valvesoftware.com/wiki/EFontFlags
  ```

surface.DrawFilledRect
------------------
  ```lua
   -- start_pos_x, start_pos_y, end_pos_x, end_pos_y
  surface.DrawSetColor(255, 0, 0, 255) 
  surface.DrawFilledRect(5, 5, 10, 10)
  ```

surface.DrawFilledRectFade
------------------
  ```lua
  -- start_pos_x, start_pos_y, end_pos_x, end_pos_y, first_alpha, next_alpha, is_horisontal
  surface.DrawSetColor(255, 0, 0, 255) 
  surface.DrawFilledRectFade(5, 5, 10, 10, 255, 0, false) 
  ```

surface.DrawOutlinedRect
------------------
  ```lua
  -- start_pos_x, start_pos_y, end_pos_x, end_pos_y
  surface.DrawSetColor(255, 0, 0, 255) 
  surface.DrawOutlinedRect(5, 5, 10, 10) 
  ```

surface.DrawSetColor
------------------
  ```lua
  -- red, green, blue, alpha
  surface.DrawSetColor(255, 0, 0, 255) -- setting color of the next drawing element
  ```

surface.GetTextSize
------------------
  ```lua
  -- font, text
  local w, h = surface.GetTextSize(font, text) -- returns width and height text size
  ```

surface.DrawLine
------------------
  ```lua
  -- start_pos_x, start_pos_y, end_pos_x, end_pos_y
  surface.DrawSetColor(255, 0, 0, 255)
  surface.DrawLine(5, 5, 20, 5) -- drawing horisontal line
  ```

surface.DrawOutlinedCircle
------------------
  ```lua
  -- pos_x, pos_y, radius, segments
  surface.DrawSetColor(255, 0, 0, 255)
  surface.DrawOutlinedCircle(20, 20, 10, 10) -- drawing the circle
  ```

surface.DrawSetTextFont
------------------
  ```lua
  -- font from setupfont
  surface.DrawSetTextFont(font) -- setting the next text font
  ```

surface.DrawSetTextColor
------------------
  ```lua
  -- red, green, blue, alpha
  surface.DrawSetTextColor(255, 0, 0, 255) -- setting the next text color
  ```

surface.DrawSetTextPos
------------------
  ```lua
  -- x, y
  surface.DrawSetTextPos(10, 10) -- setting the next text position
  ```

surface.DrawPrintText
------------------
  ```lua
  surface.DrawPrintText("Testing") -- drawing the text
  ```

engine.GetLevelNameShort
------------------
  ```lua
  local name = engine.GetLevelNameShort() -- returns the current map name
  ```

engine.GetPlayerIndexByUserID
------------------
  ```lua
  -- userID
  local index = engine.GetPlayerIndexByUserID(userID) -- returns the entity index
  ```

engine.GetPlayerIndexByUserID
------------------
  ```lua
  -- userID
  local index = engine.GetPlayerIndexByUserID(userID) -- returns the entity index
  ```

engine.GetLocalPlayer
------------------
  ```lua
  local index = engine.GetLocalPlayer() -- returns the localplayer index
  ```

engine.GetScreenSize
------------------
  ```lua
  local w, h = engine.GetScreenSize() -- returns the screen size
  ```

engine.GetViewAngles
------------------
  ```lua
  local view = engine.GetViewAngles() -- returns the camera angles
  ```

engine.SetViewAngles
------------------
  ```lua
  -- viewangle
  engine.SetViewAngles(viewangle) -- setting the camera angles
  ```

engine.IsConnected
------------------
  ```lua
  local connected = engine.IsConnected() -- returns the connected state
  ```

engine.IsInGame
------------------
  ```lua
  local isInGame = engine.IsInGame() -- returns the IsInGame state
  ```

engine.ExecuteClientCmd
------------------
  ```lua
  -- string
  engine.ExecuteClientCmd("echo test") -- printing "test" in console
  ```

clientstate.ForceFullUpdate
------------------
  ```lua
  clientstate.ForceFullUpdate() -- calling cl_fullupdate
  ```

clientstate.chokedcommands
------------------
  ```lua
  local choked = clientstate.chokedcommands() -- returns the choked commands
  ```

globalvars.realtime
------------------
  ```lua
  local realtime = globalvars.realtime() -- returns the client time
  ```

globalvars.framecount
------------------
  ```lua
  local framecount = globalvars.framecount() -- returns the frame count
  ```

globalvars.absoluteframetime
------------------
  ```lua
  local absoluteframetime = globalvars.absoluteframetime() -- returns the absolute frame time
  ```

globalvars.absoluteframestarttimestddev
------------------
  ```lua
  local absoluteframestarttimestddev = globalvars.absoluteframestarttimestddev() -- returns the absolute frame start time
  ```

globalvars.curtime
------------------
  ```lua
  local curtime = globalvars.curtime() -- returns the server time
  ```

globalvars.frametime
------------------
  ```lua
  local frametime = globalvars.frametime() -- returns the frame time
  ```

globalvars.maxClients
------------------
  ```lua
  local maxClients = globalvars.maxClients() -- returns the max clients value
  ```

globalvars.tickcount
------------------
  ```lua
  local tickcount = globalvars.tickcount() -- returns the current tickcount
  ```

globalvars.interval_per_tick
------------------
  ```lua
  local interval_per_tick = globalvars.interval_per_tick() -- returns the interval per tick
  ```

globalvars.interpolation_amount
------------------
  ```lua
  local interpolation_amount = globalvars.interpolation_amount() -- returns the interpolation amount
  ```

client.IsValveDS
------------------
  ```lua
  local isvalveds = client.IsValveDS() -- returns the is a valve server or not
  ```

client.IsKeyPressed
------------------
  ```lua
  -- key code: https://docs.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes
  local isPressed = client.IsKeyPressed(key) -- returns the pressed state
  ```

client.IsVisible
------------------
  ```lua
  -- pos, player
  local isEntityVisible = client.IsVisible(pos, player) -- returns the visible state
  ```

client.GetTimeStamp
------------------
  ```lua
  local timestamp = client.GetTimeStamp() -- returns the unix timestamp
  ```

client.GetSystemTime
------------------
  ```lua
  local hours, minutes, seconds = client.GetSystemTime() -- returns the windows time
  ```

client.GetFOV
------------------
  ```lua
  -- viewAngle, aimAngle
  local fov = client.GetFOV(viewAngle, aimAngle) -- returns the fov from viewangle to aimAngle
  ```

client.GetLatency
------------------
  ```lua
  local latency = client.GetLatency() -- returns the current latency
  ```

client.GetUsername
------------------
  ```lua
  local name = client.GetUsername() -- returns your cheat username
  ```

client.GetConvar
------------------
  ```lua
  -- cvar name
  local cvar = client.GetConvar("cl_interp") -- returns the ConVar object
  ```

client.GetSendPacket
------------------
  ```lua
  local send = client.GetSendPacket() -- returns the current packet stage
  ```

client.SetSendPacket
------------------
  ```lua
  client.SetSendPacket(true) -- setting the sendpacket stage
  ```
  
client.SetClantag
------------------
  ```lua
  -- clantag
  client.SetClantag("test") -- setting the ingame clantag
  ```

client.SetName
------------------
  ```lua
  -- name
  client.SetName("test") -- setting the ingame name
  ```

client.RegisterCallback
------------------
  ```lua
  -- callback_name, function
  function on_paint()
      surface.DrawSetColor(255, 0, 0, 255) 
      surface.DrawFilledRect(5, 5, 10, 10)
  end
  client.RegisterCallback("paint_traverse", on_paint)
  ```

client.Notification
------------------
  ```lua
  -- message
  client.Notification("Hello, world!") -- pushing the notification
  ```

client.AddToRadioList
------------------
  ```lua
  -- text, radiourl
  client.AddToRadioList(text, radiourl) -- adding your channel to radio list
  ```

client.RandomInt
------------------
  ```lua
  -- min, max
  local random = client.RandomInt(0, 10) -- returns the random number
  ```

client.RandomFloat
------------------
  ```lua
  -- min, max
  local random = client.RandomFloat(0.0, 10.0) -- returns the random number
  ```

client.LoadScript
------------------
  ```lua
  -- script name
  client.LoadScript("clantag.lua") -- loading the script
  ```

client.UnloadScript
------------------
  ```lua
  -- script name
  client.UnloadScript("clantag.lua") -- unloading the script
  ```

client.LoadConfig
------------------
  ```lua
  -- cfg name
  client.LoadConfig("default.nixware") -- loading the config
  ```

client.WorldToScreen
------------------
  ```lua
  -- 3d_pos
  local pos_2d = client.WorldToScreen(pos_3d) -- returns the screen position by world position
  ```

client.CalcAngle
------------------
  ```lua
  -- src, dst
  local angle = client.CalcAngle(eye_position, target_position) -- returns the angle by pos
  ```

client.FindIDAPattern
------------------
  ```lua
  -- modulename, pattern, offset
  local addr = client.FindIDAPattern("client_panorama.dll", "8B 35 ? ? ? ? 66 3B D0 74 07", 2) -- returns the address by IDA pattern
  ```

client.FindCodePattern
------------------
  ```lua
  -- modulename, pattern, mask, offset
  local addr = client.FindCodePattern("engine.dll", "\x8D\x4C\x24\x1C\xE8\x00\x00\x00\x00\x56", "xxxxx????x", 0) -- returns the address by code pattern
  ```

entitylist.GetPlayerByIndex
------------------
  ```lua
  -- index
  local player = entitylist.GetPlayerByIndex(index) -- returns the Player object
  ```

entitylist.GetWeaponByIndex
------------------
  ```lua
  -- index
  local weapon = entitylist.GetWeaponByIndex(index) -- returns the Weapon object
  ```

entitylist.GetEntityByIndex
------------------
  ```lua
  -- index
  local entity = entitylist.GetEntityByIndex(index) -- returns the Entity object
  ```
  
entitylist.GetHighestEntityIndex
------------------
  ```lua
  local idx = entitylist.GetHighestEntityIndex() -- returns the highest entity index
  ```

entitylist.GetPlayers
------------------
  ```lua
  -- type
  -- 0 - enemies only
  -- 1 - teammates only
  -- 2 - all players
  local players = entitylist.GetPlayers(type) -- returns the players array
  for i = 1, #players do
      local player = players[i]
  end
  ```

entitylist.GetLocalPlayer
------------------
  ```lua
  local localplayer = entitylist.GetLocalPlayer() -- returns the local player object
  ```

entitylist.GetEntitiesByClass
------------------
  ```lua
  -- classname
  local entities = entitylist.GetEntitiesByClass(classname) -- returns the entities array
  for i = 1, #entities do
      local entity = entities[i]
  end
  ```

entitylist.GetEntitiesByClassID
------------------
  ```lua
  -- classid
  local entities = entitylist.GetEntitiesByClass(classid) -- returns the entities array
  for i = 1, #entities do
      local entity = entities[i]
  end
  ```
  
netchannel.SetTimeout
------------------
  ```lua
  -- seconds, forceExact 
  netchannel.SetTimeout(seconds, forceExact)
  ```

netchannel.RequestFile
------------------
  ```lua
  -- filename, isReplayDemo 
  netchannel.RequestFile(filename, isReplayDemo)
  ```

Callbacks
------------------
```lua
  create_movement(UserCmd)
  fire_game_event(Event)
  frame_stage_notify(current_stage)
  paint_traverse()
  find_mdl()
```