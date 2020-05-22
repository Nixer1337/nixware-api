# callbacks

## **paint()**

Callback for drawing
```lua
local function on_paint()
    surface.draw_set_color(color_t.new(255, 0, 0, 255))
    surface.draw_line(5, 5, 20, 5)
end

client.register_callback("paint", on_paint)
```

---

## **unload()**

Script unload callback
```lua
local function on_unload()
    -- restore modifed data
end

client.register_callback("unload", on_unload)
```

## **create_move(cmd)** - csgo
Type | Name | Description
------------ | ------------- | ------------
[usercmd_t](../sourceengine/types/usercmd_t) | cmd | Current command

CreateMove callback. Can used for command or send packet modification
```lua
local MAX_CHOKE = 14

local function on_create_move(cmd) 
    -- pitch down
    cmd.viewangles.pitch = 90

    -- backwards
    cmd.viewangles.yaw = cmd.viewangles.yaw + 180

    -- fakelag
    cmd.send_packet = clientstate.get_choked_commands() >= MAX_CHOKE
end

client.register_callback("create_move", on_create_move)
```
---

## **frame_stage_notify(stage)** - csgo
Type | Name | Description
------------ | ------------- | ------------
number | stage | Current stage

FrameStageNotify callback. Calls every game stage [developer.valvesoftware.com/wiki/Frame_Order](https://developer.valvesoftware.com/wiki/Frame_Order)
```lua
local FRAME_RENDER_START = 5

local function on_frame_stage_notify(stage) 
    if stage ~= FRAME_RENDER_START then return end

    -- run code on frame render start
end

client.register_callback("frame_stage_notify", on_frame_stage_notify)
```
---

## **fire_game_event(event)** - csgo
Type | Name | Description
------------ | ------------- | ------------
[game_event_t](../sourceengine/types/game_event_t) | event | Event

FireGameEvent callback. Calls on event
```lua
se.register_event("round_start")

local function on_fire_game_event(event) 
    if event:get_name() ~= "round_start" then return end

    client.notify("Round started!")
end

client.register_callback("fire_game_event", on_fire_game_event)
```