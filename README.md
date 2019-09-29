Nixware - Counter Strike: Global Offensive
=========================

## API For Lua Scripts

Handlers
--------------------------
```lua
      create_movement(CUserCmd* cmd)
      paint_traverse()
      fire_game_event(IGameEvent* event)
```

Tables
--------------------------
```lua
  surface
    int GetCursurPosX()
    int GetCursurPosY()
    font SetupFont(string windowsFontName, int tall, int weight, int blur, int scanlines, int flags)
    void DrawFilledRect(int x, int y, int x2, int y2)
    void DrawOutlinedRect(int x, int y, int x2, int y2)
    void DrawSetColor(int r, int g, int b, int a)
    int CreateNewTextureID()
    void SetTextureRGBA(int id, const unsigned char* rgba, int w, int h)
    int, int GetTextSize(font, const wchar_t* text) -- width, height
    void DrawLine(int x, int y, int x2, int y2)
    void DrawOutlinedCircle(int x, int y, int radius, int segments)
    void DrawSetTextFont(font)
    void DrawSetTextColor(int r, int g, int b, int a)
    void DrawSetTextPos(int x, int y)
    void DrawPrintText(string str)
    void DrawTexturedRect(int x, int y, int x2, int y2)

  engine 
    int GetPlayerIndexByUserID(int userID)
    int GetLocalPlayer()
    int, int GetScreenSize() -- width, height
    QAngle GetViewAngles()
    void SetViewAngles(QAngle angle)
    bool IsConnected()
    bool IsInGame()
    void ExecuteClientCmd(string cmd)

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
    int simTicksThisFrame()
    int network_protocol()

  client
    bool IsValveDS()
    bool IsKeyPressed(int key)
    bool IsVisible(Vector pos)
    int GetTimeStamp()
    int, int, int GetSystemTime() -- hours, minutes, seconds
    float GetFOV(QAngle viewAngle, QAngle aimAngle)
    float GetLatency()
    string GetUsername()
    ConVar* GetConvar(string var) 
    bool GetSendPacket() 
    void SetSendPacket(bool v) 
    void SetClantag(string tag)
    void RegisterCallback(string name, function)
    void Notification(string msg)
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
    prop GetProp()
    void SetProp()
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
    short GetIndex()
    RECT GetBoundingBox()
    RECT GetStaticBox()
    prop GetProp()
    void SetProp()
  }

  class CEntity
  {
    bool IsValidPtr()
    int GetIndex()
    RECT GetBoundingBox()
    RECT GetStaticBox()
    prop GetProp()
    void SetProp()
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
Example of using
------------------
```lua
-- simple esp boxes
local function on_painttraverse()
    for i = 0, entitylist.GetHighestEntityIndex(), 1 do
        local entity = entitylist.GetPlayerByIndex(i)
        if entity:IsValidPtr() and entity:IsPlayer() and entity:IsDormant() == false then
            if entity:GetHealth() > 0 and entity:IsLocalPlayer() == false and entity:IsTeammate() == false then
                local rect = entity:GetBoundingBox()
                if client.IsVisible(entity:GetEyePos()) then
                    surface.DrawSetColor(255, 0, 0, 255)
                else
                    surface.DrawSetColor(0, 0, 0, 255)
                end
                surface.DrawOutlinedRect(rect.left, rect.top, rect.right, rect.bottom)
            end
        end
    end
end

client.RegisterCallback("paint_traverse", on_painttraverse)
```
![alt text](https://i.imgur.com/GvP6QXh.png)
