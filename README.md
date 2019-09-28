Nixware - Counter Strike: Global Offensive
=========================

## API For Lua Scripts

Handlers
--------------------------
```lua
      createmovement(CUserCmd* cmd)
      painttraverse()
      firegameevent(IGameEvent* event)
```

Tables
--------------------------
```lua
  utilities
      Vector WorldToScreen(Vector in)

  surface
      int GetCursurPosX()
      int GetCursurPosY()
      font SetupFont(string windowsFontName, int tall, int weight, int blur, int scanlines, int flags)
      void DrawFilledRect(int x, int y, int x2, int y2)
      void DrawOutlinedRect(int x, int y, int x2, int y2)
      void DrawSetColor(int r, int g, int b, int a)
      int CreateNewTextureID()
      void SetTextureRGBA(int id, const unsigned char* rgba, int w, int h)
      int GetTextWidth(font, const wchar_t* text)
      int GetTextHeight(font, const wchar_t* text)
      void DrawLine(int x, int y, int x2, int y2)
      void DrawOutlinedCircle(int x, int y, int radius, int segments)
      void DrawSetTextFont(font)
      void DrawSetTextColor(int r, int g, int b, int a)
      void DrawSetTextPos(int x, int y)
      void DrawPrintText(string str)
      void DrawTexturedRect(int x, int y, int x2, int y2)

  engine 
      int GetLocalPlayer()
      int GetScreenWidth()
      int GetScreenHeight()
      bool IsConnected()
      bool IsInGame()
      void ExecuteClientCmd(string cmd)
      void SetViewAngles(QAngle angle)
      QAngle GetViewAngles()
      int GetPlayerForUserID(int userID)

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
      void RegisterCallback(string name, function)
      void Notification(string msg)
      string GetUsername()
      bool IsValveDS()
      bool IsKeyPressed(int key)
      int RandomInt(int min, int max)
      float RandomFloat(float min, float max)
      float SetClantag(string tag)
      void LoadScript(string script) 
      void UnloadScript(string script)
      void LoadConfig(string script) 
      ConVar* GetConvar(string var) 
      void SetSendPacket(bool v) 
      bool GetSendPacket() 

  entitylist
      int GetHighestEntityIndex()
      CPlayer* GetPlayerByIndex(int index)

  netchannel
      void SetTimeout(float seconds, bool forceExact = false)
      void RequestFile(string filename, bool isReplayDemo)

```

Classes
--------------------------
```lua
  class CPlayer
  {
      int GetIndex()
      bool IsPlayer()
      bool IsValidPtr()
      bool IsDormant()
      int GetHealth()
      Vector GetAbsOrigin()
      Vector GetOrigin()
      int GetMoney()
      bool IsFlashed()
      int GetMoveType()
      Vector GetEyePos()
      string GetName()
      QAngle GetAngles()
      bool IsLocalPlayer()
      bool IsTeammate()
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
```
Example of using
------------------
```lua
--- simple esp
local function on_painttraverse()
    for i = 0, entitylist.GetHighestEntityIndex(), 1 do
        local entity = entitylist.GetPlayerByIndex(i)
        if entity:IsValidPtr() then
            if entity:IsPlayer() then
                if entity:IsDormant() == false then
                    if entity:GetHealth() > 0 then
                        local pos_2d = utilities.WorldToScreen(entity:GetAbsOrigin())
                        surface.DrawSetColor(255, 0, 0, 255)
                        surface.DrawFilledRect(pos_2d.x, pos_2d.y, pos_2d.x + 10, pos_2d.y + 10)
                    end
                end
            end
        end
    end
end
client.RegisterCallback("painttraverse", on_painttraverse)
```
![alt text](https://i.imgur.com/sKLpmbC.png)
