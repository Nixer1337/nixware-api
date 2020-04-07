Nixware Reborn
=========================

## API For Lua Scripts (LuaJIT Supported)

[mdl.ReplacePath](#mdlreplacepath)

[ui.Checkbox](#uicheckbox)

[ui.Combo](#uicombo)

[ui.SliderInt](#uisliderint)

[ui.SliderFloat](#uisliderfloat)

[ui.GetBool](#uigetbool)

[ui.GetInt](#uigetint)

[ui.GetFloat](#uigetfloat)

[ui.KeyBind](#uikeybind)

[ui.GetBindState](#uigetbindstate)

[ui.SetBool](#uisetbool)

[ui.SetInt](#uisetint)

[ui.SetFloat](#uisetfloat)

[surface.PlaySound](#surfaceplaysound)

[surface.GetCursorPos](#surfacegetcursorpos)

[surface.SetupFont](#surfacesetupfont)

[surface.DrawFilledRect](#surfacedrawfilledrect)

[surface.DrawFilledRectFade](#surfacedrawfilledrectfade)

[surface.DrawOutlinedRect](#surfacedrawoutlinedrect)

[surface.DrawSetColor](#surfacedrawsetcolor)

[surface.GetTextSize](#surfacegettextsize)

[surface.DrawLine](#surfacedrawline)

[surface.DrawOutlinedCircle](#surfacedrawoutlinedcircle)

[surface.DrawSetTextFont](#surfacedrawsettextfont)

[surface.DrawSetTextColor](#surfacedrawsettextcolor)

[surface.DrawSetTextPos](#surfacedrawprinttext)

[surface.DrawPrintText](#surfacedrawprinttext)

[surface.DrawTexturedPolygon](#surfacedrawtexturedpolygon)

[engine.GetLevelNameShort](#enginegetlevelnameshort)

[engine.GetPlayerIndexByUserID](#enginegetplayerindexbyuserid)

[engine.GetLocalPlayer](#enginegetlocalplayer)

[engine.GetScreenSize](#enginegetscreensize)

[engine.GetViewAngles](#enginegetviewangles)

[engine.SetViewAngles](#enginesetviewangles)

[engine.IsConnected](#engineisconnected)

[engine.IsInGame](#engineisinGame)

[engine.ExecuteClientCmd](#engineexecuteclientcmd)

[clientstate.ForceFullUpdate](#clientstateforcefullupdate)

[clientstate.GetChokedCommands](#clientstategetchokedcommands)

[globalvars.GetRealTime](#globalvarsgetrealtime)

[globalvars.GetFrameCount](#globalvarsgetframecount)

[globalvars.GetAbsoluteFrametime](#globalvarsgetabsoluteframetime)

[globalvars.GetCurrentTime](#globalvarsgetcurrenttime)

[globalvars.GetFrameTime](#globalvarsgetframetime)

[globalvars.GetMaxClients](#globalvarsgetmaxclients)

[globalvars.GetTickCount](#globalvarsgettickcount)

[globalvars.GetIntervalPerTick](#globalvarsgetintervalpertick)

[client.IsKeyPressed](#clientiskeypressed)

[client.IsVisible](#clientisvisible)

[client.GetTimeStamp](#clientgettimestamp)

[client.GetSystemTime](#clientgetsystemtime)

[client.GetFOV](#clientgetfov)

[client.GetLatency](#clientgetlatency)

[client.GetUsername](#clientgetusername)

[client.GetConvar](#clientgetconvar)

[client.GetNetvar](#clientgetnetvar)

[client.SetSendPacket](#clientsetsendpacket)

[client.SetClantag](#clientsetclantag)

[client.SetName](#clientsetname)

[client.RegisterCallback](#clientregistercallback)

[client.RandomInt](#clientrandomint)

[client.RandomFloat](#clientrandomfloat)

[client.LoadScript](#clientloadscript)

[client.UnloadScript](#clientunloadscript)

[client.LoadConfig](#clientloadconfig)

[client.WorldToScreen](#clientworldtoscreen)

[client.AddEventToListener](#clientaddeventtolistener)

[client.CalcAngle](#clientCalcangle)

[client.FindPattern](#clientfindpattern)

[entitylist.GetPlayerByIndex](#entitylistgetplayerbyindex)

[entitylist.GetWeaponByIndex](#entitylistgetweaponbyindex)

[entitylist.GetEntityByIndex](#entitylistgetentitybyindex)

[entitylist.GetHighestEntityIndex](#entitylistgethighestentityIndex)

[entitylist.GetLocalPlayer](#entitylistgetlocalplayer)

[entitylist.GetEntityFromHandle](#entitylistgetentityfromhandle)

[entitylist.GetPlayers](#entitylistgetplayers)

[entitylist.GetEntitiesByClass](#entitylistgetentitiesbyclass)

[entitylist.GetEntitiesByClassID](#entitylistgetentitiesbyclassid)

[netchannel.SetTimeout](#netchannelsettimeout)

[netchannel.RequestFile](#netchannelrequestfile)

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
Player:GetPropBool(int offset)
Player:GetPropInt(int offset)
Player:GetPropFloat(int offset)
Player:GetPropDouble(int offset)
Player:GetPropShort(int offset)
Player:GetPropVector(int offset)
Player:GetPropAngle(int offset)
Player:SetPropInt(int offset, int i)
Player:SetPropShort(int offset, short i)
Player:SetPropAngle(int offset, QAngle ang)
Player:SetPropDouble(int offset, double i)
Player:SetPropBool(int offset, bool i)
Player:SetPropFloat(int offset, float i)
Player:SetPropVector(int offset, Vector i)
Player:GetAnimState()
Player:GetMissedShots()
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
Weapon:GetPropBool(int offset)
Weapon:GetPropInt(int offset)
Weapon:GetPropFloat(int offset)
Weapon:GetPropDouble(int offset)
Weapon:GetPropShort(int offset)
Weapon:GetPropVector(int offset)
Weapon:GetPropAngle(int offset)
Weapon:SetPropInt(int offset, int i)
Weapon:SetPropShort(int offset, short i)
Weapon:SetPropAngle(int offset, QAngle ang)
Weapon:SetPropDouble(int offset, double i)
Weapon:SetPropBool(int offset, bool i)
Weapon:SetPropFloat(int offset, float i)
Weapon:SetPropVector(int offset, Vector i)
```

Entity class
--------------------------
```lua
Entity:IsValidPtr()
Entity:GetIndex()
Entity:GetBoundingBox()
Entity:GetStaticBox()
Entity:GetPropBool(int offset)
Entity:GetPropInt(int offset)
Entity:GetPropFloat(int offset)
Entity:GetPropDouble(int offset)
Entity:GetPropShort(int offset)
Entity:GetPropVector(int offset)
Entity:GetPropAngle(int offset)
Entity:SetPropInt(int offset, int i)
Entity:SetPropShort(int offset, short i)
Entity:SetPropAngle(int offset, QAngle ang)
Entity:SetPropDouble(int offset, double i)
Entity:SetPropBool(int offset, bool i)
Entity:SetPropFloat(int offset, float i)
Entity:SetPropVector(int offset, Vector i)
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
Event:GetBool(string keyname, bool default_value)
Event:GetInt(string keyname, int default_value)
Event:GetFloat(string keyname, float default_value)
Event:GetString(string keyname, string default_value)
```

UserCmd class
--------------------------
```lua
UserCmd.command_number
UserCmd.tick_count
UserCmd.viewangles
UserCmd.forwardmove
UserCmd.sidemove
UserCmd.upmove
UserCmd.buttons
UserCmd.random_seed
UserCmd.mousedx
UserCmd.mousedy
```

AnimState class
--------------------------
```lua
AnimState.m_flLastClientSideAnimationUpdateTime
AnimState.m_iLastClientSideAnimationUpdateFramecount
AnimState.m_flEyePitch
AnimState.m_flEyeYaw
AnimState.m_flPitch
AnimState.m_flGoalFeetYaw
AnimState.m_flCurrentFeetYaw
AnimState.m_flCurrentTorsoYaw
AnimState.m_flUnknownVelocityLean
AnimState.m_flLeanAmount
AnimState.m_flFeetCycle
AnimState.m_flFeetYawRate
AnimState.m_fDuckAmount
AnimState.m_fLandingDuckAdditiveSomething
AnimState.m_vOrigin
AnimState.m_vLastOrigin
AnimState.m_vVelocityX
AnimState.m_vVelocityY
AnimState.m_flSpeed2D
AnimState.m_flUpVelocity
AnimState.m_flSpeedNormalized
AnimState.m_flFeetSpeedForwardsOrSideWays
AnimState.m_flFeetSpeedUnknownForwardOrSideways
AnimState.m_flTimeSinceStartedMoving
AnimState.m_flTimeSinceStoppedMoving
AnimState.m_bOnGround
AnimState.m_bInHitGroundAnimation
AnimState.m_flLastOriginZ
AnimState.m_flHeadHeightOrOffsetFromHittingGroundAnimation
AnimState.m_flStopToFullRunningFraction
AnimState.m_flUnknownFraction
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
Vector:IsValid()
Vector:Zero()
Vector:DistTo(const Vector &vOther)
Vector:DistToSqr(const Vector &vOther)
Vector:Cross(const Vector& vOther)
Vector:Normalize()
```

Vector2D class
--------------------------
```lua
Vector2D.x
Vector2D.y
Vector2D:Length2D()
Vector2D:Length2DSqr()
Vector2D:IsValid()
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
  client.RegisterCallback("FindMDL", model_changer)
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
  -- Label, variable name
  ui.KeyBind("Label", "i_key")

  local key = ui.GetInt("i_key") -- returns the key
  client.IsKeyPressed(key) -- returns the pressed state
  ```

ui.Combo
------------------
  ```lua
  -- Label, variable name, strings array, default value
  ui.Combo("Label", "i_variable", { "Item1", "Item2", "Item3" }, 0)
  ui.GetInt("i_variable") -- returns the combo value
  ```

ui.InputText
------------------
  ```lua
  -- Label, variable name, default value
  ui.InputText("Label", "str_variable", "default")
  ui.GetString("str_variable") -- returns the input value
  ```

ui.KeyBind
------------------
  ```lua
    -- Label, variable name, default key
  ui.KeyBind("label", "lua_bind", 0)
```

ui.GetBindState
------------------
  ```lua
  ui.GetBindState("lua_bind") -- returns the bind state
```

ui.GetBool
------------------
  ```lua
  local var = ui.GetBool("var") -- returns the variable state
  ```

ui.GetInt
------------------
  ```lua
  local var = ui.GetInt("var") -- returns the variable value
  ```

ui.GetFloat
------------------
  ```lua
  local var = ui.GetFloat("var") -- returns the variable value
  ```

ui.GetColor
------------------
  ```lua
  local r, g, b, a = ui.GetColor("var") -- returns the variable color
  ```

ui.GetString
------------------
  ```lua
  local var = ui.GetString("var") -- returns the variable value
  ```

ui.SetBool
------------------
  ```lua
  ui.SetBool("var", true) -- setting the variable state
  ```

ui.SetInt
------------------
  ```lua
  ui.SetInt("var", 5) -- setting the variable value
  ```

ui.SetFloat
------------------
  ```lua
  ui.SetFloat("var", 5.0) -- setting the variable value
  ```

ui.SetString
------------------
  ```lua
  ui.SetString("var", "hello") -- setting the variable value
  ```

ui.SetColor
------------------
  ```lua
  ui.SetColor("var", r, g, b, a) -- setting the variable color
  ```

surface.PlaySound
------------------
  ```lua
  surface.PlaySound("bell.wav") -- playing sound from Counter-Strike Global Offensive\csgo\sound folder
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

surface.DrawTexturedPolygon
------------------
  ```lua
    local points = { Vector2D.new(5, 5), Vector2D.new(15, 5), Vector2D.new(10, 15) }
    -- points num, points, red, green, blue, alpha
    surface.DrawTexturedPolygon(3, points, 255, 0, 0, 255) -- render the red trigon https://i.imgur.com/OjcQf6i.png
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

clientstate.GetChokedCommands
------------------
  ```lua
  local choked = clientstate.GetChokedCommands() -- returns the choked commands
  ```

globalvars.GetRealTime
------------------
  ```lua
  local realtime = globalvars.GetRealTime() -- returns the client time
  ```

globalvars.GetFrameCount
------------------
  ```lua
  local framecount = globalvars.GetFrameCount() -- returns the frame count
  ```

globalvars.GetAbsoluteFrametime
------------------
  ```lua
  local absoluteframetime = globalvars.GetAbsoluteFrametime() -- returns the absolute frame time
  ```

globalvars.GetCurrentTime
------------------
  ```lua
  local curtime = globalvars.GetCurrentTime() -- returns the server time
  ```

globalvars.GetFrameTime
------------------
  ```lua
  local frametime = globalvars.GetFrameTime() -- returns the frame time
  ```

globalvars.GetMaxClients
------------------
  ```lua
  local maxClients = globalvars.GetMaxClients() -- returns the max clients value
  ```

globalvars.GetTickCount
------------------
  ```lua
  local tickcount = globalvars.GetTickCount() -- returns the current tickcount
  ```

globalvars.GetIntervalPerTick
------------------
  ```lua
  local interval_per_tick = globalvars.GetIntervalPerTick() -- returns the interval per tick
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

client.GetNetvar
------------------
  ```lua
  -- table, netvar
  local offset = client.GetNetvar("DT_BasePlayer", "m_iHealth") -- returns the m_iHealth offset
  player:GetPropInt(offset) -- returns the player health
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
  client.RegisterCallback("Paint", on_paint)
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

client.AddEventToListener
------------------
  ```lua
  -- event name
  client.AddEventToListener("inferno_expire") -- adds event to listener
  -- events list: https://wiki.alliedmods.net/Counter-Strike:_Global_Offensive_Events
  ```

client.CalcAngle
------------------
  ```lua
  -- src, dst
  local angle = client.CalcAngle(eye_position, target_position) -- returns the angle by pos
  ```

client.FindPattern
------------------
  ```lua
  -- modulename, pattern, offset
  local addr = client.FindPattern("client_panorama.dll", "8B 35 ? ? ? ? 66 3B D0 74 07", 2) -- returns the address by IDA pattern
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

entitylist.GetEntityFromHandle
------------------
  ```lua
  -- handle
  local entity = entitylist.GetEntityFromHandle(handle) -- returns the entity object from handle
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
  CreateMovement(UserCmd)
  FireGameEvent(Event)
  FrameStageNotify(Stage)
  Paint()
  FindMDL()
  ```