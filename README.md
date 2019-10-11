Nixware - Counter Strike: Global Offensive
=========================

## API For Lua Scripts

Libraries
```lua
	base,
	-- require and other package functions
	package,
	-- coroutine functions and utilities
	coroutine,
	-- string library
	string,
	-- functionality from the OS
	os,
	-- all things math
	math,
	-- the table manipulator and observer functions
	table,
	-- the bit library: different based on which you're using
	bit32,
	-- input/output library
	io,
	-- LuaJIT only
	ffi,
	-- LuaJIT only
	jit,
	-- library for handling utf8
	utf8

```

Handlers
--------------------------
```lua
      create_movement(CUserCmd* cmd)
      paint_traverse()
      fire_game_event(IGameEvent* event)
      frame_stage_notify(int stage)
```

Tables
--------------------------
```lua

  ui
    void Checkbox(string name, string variable, bool default_value)
    void SliderInt(string name, string variable, int min, int max, int default_value)
    void SliderFloat(string name, string variable, float min, float max, float default_value)
    void KeyBind(string name, string variable)

    bool GetBool(string var)
    int GetInt(string var)
    float GetFloat(string var)
    void SetBool(string var, bool v)
    void SetInt(string var, int v)
    void SetFloat(string var, float v)

  surface
    int, int GetCursorPos() -- x, y
    font SetupFont(string windowsFontName, int tall, int weight, int blur, int scanlines, int flags)
    void DrawFilledRect(int x, int y, int x2, int y2)
    void DrawFilledRectFade(int x0, int y0, int x1, int y1, unsigned int alpha0, unsigned int alpha1, bool horizontal)
    void DrawOutlinedRect(int x, int y, int x2, int y2)
    void DrawSetColor(int r, int g, int b, int a)
    int, int GetTextSize(font, string text) -- width, height
    void DrawLine(int x, int y, int x2, int y2)
    void DrawOutlinedCircle(int x, int y, int radius, int segments)
    void DrawSetTextFont(font)
    void DrawSetTextColor(int r, int g, int b, int a)
    void DrawSetTextPos(int x, int y)
    void DrawPrintText(string str)

  engine 
    string GetLevelNameShort()
    int GetPlayerIndexByUserID(int userID)
    int GetLocalPlayer()
    int, int GetScreenSize() -- width, height
    QAngle GetViewAngles()
    void SetViewAngles(QAngle angle)
    bool IsConnected()
    bool IsInGame()
    void ExecuteClientCmd(string cmd)

  clientstate 
    void ForceFullUpdate()
    int chokedcommands()

  globalvars
    float realtime()
    int framecount()
    float absoluteframetime()
    float absoluteframestarttimestddev() 
    float curtime()
    float frametime()
    int maxClients()
    int tickcount()
    float interval_per_tick() 
    float interpolation_amount()

  client
    bool IsValveDS()
    bool IsKeyPressed(int key)
    bool IsVisible(Vector pos, CPlayer* player)
    int GetTimeStamp()
    int, int, int GetSystemTime() -- hours, minutes, seconds
    float GetFOV(QAngle viewAngle, QAngle aimAngle)
    float GetLatency()
    string GetUsername()
    ConVar* GetConvar(string var) 
    bool GetSendPacket() 
    void SetSendPacket(bool v) 
    void SetClantag(string tag)
    void SetName(string name)
    void RegisterCallback(string name, function)
    void Notification(string msg)
    void AddToRadioList(string name, string url)
    int RandomInt(int min, int max)
    float RandomFloat(float min, float max)
    void LoadScript(string script) 
    void UnloadScript(string script)
    void LoadConfig(string script) 
    Vector WorldToScreen(Vector in)
    QAngle CalcAngle(Vector src, Vector dst)
    DWORD FindIDAPattern(string module, string pattern, int offset)
    DWORD FindCodePattern(string module, string pattern, string mask, int offset)

  entitylist
    CPlayer* GetPlayerByIndex(int index)
    CWeapon* GetWeaponByIndex(int index)
    CEntity* GetEntityByIndex(int index)
    int GetHighestEntityIndex()
    CPlayer* GetLocalPlayer()
    CPlayer* GetPlayers(int type)[]
    CEntity* GetEntitiesByClass(string classname)[]
    CEntity* GetEntitiesByClassID(int classID)[]


  netchannel
    void SetTimeout(float seconds, bool forceExact = false)
    void RequestFile(string filename, bool isReplayDemo)

```

Classes
--------------------------
```lua
  class CPlayer
  {
    bool IsValidPtr()
    bool IsPlayer()
    bool IsDormant()
    bool IsFlashed()
    bool IsLocalPlayer()
    bool IsTeammate()
    bool IsScoped()
    int GetIndex()
    int GetHealth()
    Vector GetAbsOrigin()
    Vector GetOrigin()
    int GetMoney()
    int GetMoveType()
    Vector GetEyePos()
    string GetName()
    QAngle GetAngles()
    int GetTeamNum()
    CWeapon* GetWeapon()
    RECT GetBoundingBox()
    RECT GetStaticBox()
    Vector GetHitboxPos(int hitbox)
    __int64 GetSteamID64()
    int GetDormantAlpha()
    Vector GetAbsVelocity()
    Vector GetVelocity()
    float GetSimulationTime()
    float GetOldSimulationTime()

    bool GetPropBool(string prop);
    int GetPropInt(string prop);
    float GetPropFloat(string prop);
    double GetPropDouble(string prop);
    short GetPropShort(string prop);
    Vector GetPropVector(string prop);
    QAngle GetPropAngle(string prop);

    void SetPropInt(string prop, int i);
    void SetPropShort(string prop, short i);
    void SetPropAngle(string prop, QAngle ang);
    void SetPropDouble(string prop, double i);
    void SetPropBool(string prop, bool i);
    void SetPropFloat(string prop, float i);
    void SetPropVector(string prop, Vector i);
  }

  class CWeapon
  {
    bool IsValidPtr()
    bool IsKnife()
    bool IsGrenade()
    bool IsZeus()
    bool IsReloading()
    int GetIndex()
    float GetSpread()
    float GetInaccuracy()
    Vector GetAbsOrigin()
    Vector GetOrigin()
    string GetName()
    int GetZoomLevel()
    float GetNextPrimaryAttack()
    float GetNextSecondaryAttack()
    short GetItemDefinitionIndex()
    RECT GetBoundingBox()
    RECT GetStaticBox()

    bool GetPropBool(string prop);
    int GetPropInt(string prop);
    float GetPropFloat(string prop);
    double GetPropDouble(string prop);
    short GetPropShort(string prop);
    Vector GetPropVector(string prop);
    QAngle GetPropAngle(string prop);

    void SetPropInt(string prop, int i);
    void SetPropShort(string prop, short i);
    void SetPropAngle(string prop, QAngle ang);
    void SetPropDouble(string prop, double i);
    void SetPropBool(string prop, bool i);
    void SetPropFloat(string prop, float i);
    void SetPropVector(string prop, Vector i);
  }

  class CEntity
  {
    bool IsValidPtr()
    int GetIndex()
    RECT GetBoundingBox()
    RECT GetStaticBox()

    bool GetPropBool(string prop);
    int GetPropInt(string prop);
    float GetPropFloat(string prop);
    double GetPropDouble(string prop);
    short GetPropShort(string prop);
    Vector GetPropVector(string prop);
    QAngle GetPropAngle(string prop);

    void SetPropInt(string prop, int i);
    void SetPropShort(string prop, short i);
    void SetPropAngle(string prop, QAngle ang);
    void SetPropDouble(string prop, double i);
    void SetPropBool(string prop, bool i);
    void SetPropFloat(string prop, float i);
    void SetPropVector(string prop, Vector i);
  }

  class ConVar
  {
    bool GetBool()
    int GetInt()
    float GetFloat()
    string GetString()

    void SetBool(bool v)
    void SetInt(int v)
    void SetFloat(float v)
    void SetString(string v)
  }

  class IGameEvent
  {
    string GetName()
    bool GetBool()
    int GetInt()
    float GetFloat()
    string GetString()
  }

  class CUserCmd
  {
    int command_number
    int tick_count
    Vector aimdirection
    float forwardmove
    float sidemove
    float upmove
    int buttons
    char impulse
    int weaponselect
    int weaponsubtype
    int random_seed
    short mousedx
    short mousedy
    bool hasbeenpredicted
  }
  
  class QAngle
  {
    float pitch
    float yaw
    float roll
    float Length()
    float LengthSqr()
    bool IsZero(float tolerance = 0.01f)
    float Normalize()
  }

  class Vector
  {
    float x
    float y
    float z

    float Length()
    float LengthSqr()
    float Length2D()
    float Length2DSqr()
    bool IsZero(float tolerance = 0.01f)
    bool IsValid()
    void Zero()
    float DistTo(const Vector &vOther)
    float DistToSqr(const Vector &vOther)
    Vector Cross(const Vector& vOther)
    float Normalize()
  }

  class RECT
  {
    long left
    long top
    long right
    long bottom
  }
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
  local addr = client.FindCodePattern("engine.dll", "\\x8D\\x4C\\x24\\x1C\\xE8\\x00\\x00\\x00\\x00\\x56", "xxxxx????x", 0) -- returns the address by code pattern
  ```

entitylist.GetPlayerByIndex
------------------
  ```lua
  -- index
  local player = entitylist.GetPlayerByIndex(index) -- returns the CPlayer object
  ```

entitylist.GetWeaponByIndex
------------------
  ```lua
  -- index
  local weapon = entitylist.GetWeaponByIndex(index) -- returns the CWeapon object
  ```

entitylist.GetEntityByIndex
------------------
  ```lua
  -- index
  local entity = entitylist.GetEntityByIndex(index) -- returns the CEntity object
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