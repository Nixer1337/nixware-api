# callbacks

## **paint()** 

Callback for drawing
```lua
local font = renderer.setup_font("C:/windows/fonts/tahomabd.ttf", 50)

local function on_paint()
    renderer.text("hello world!", font, vec2_t.new(20, 20), 50, color_t.new(255, 255, 255, 255))
    renderer.rect_filled(vec2_t.new(30, 30), vec2_t.new(40, 40), color_t.new(255, 0, 0, 255))
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

---

## **create_move(cmd)**
Type | Name | Description
------------ | ------------- | ------------
[usercmd_t](../sourceengine/types/usercmd_t/) | cmd | Current command

CreateMove callback. Can used for command or send packet modification
```lua
local MAX_CHOKE = 14

client.register_callback("create_move", function(cmd) 
    -- pitch down
    cmd.viewangles.pitch = 90

    -- backwards
    cmd.viewangles.yaw = cmd.viewangles.yaw + 180

    -- fakelag
    cmd.send_packet = clientstate.get_choked_commands() >= MAX_CHOKE
end)
```
---

## **frame_stage_notify(stage)**
Type | Name | Description
------------ | ------------- | ------------
number | stage | Current stage

FrameStageNotify callback. Calls every game stage [developer.valvesoftware.com/wiki/Frame_Order](https://developer.valvesoftware.com/wiki/Frame_Order)
```lua
local FRAME_RENDER_START = 5

client.register_callback("frame_stage_notify", function(stage) 
    if stage ~= FRAME_RENDER_START then return end

    -- run code on frame render start
end)
```
---

## **fire_game_event(event)**
Type | Name | Description
------------ | ------------- | ------------
[game_event_t](../sourceengine/types/game_event_t/) | event | Event

FireGameEvent callback. Calls on event
```lua
client.register_callback("round_start", function(event)
    client.notify("Round started!")
end)
```

---

## **shot_fired(shot_info)**
Type | Name | Description
------------ | ------------- | ------------
[shot_info_t](../sourceengine/types/shot_info_t/) | shot_info | Shot info

ShotFired callback. Calls on shot
```lua
client.register_callback("shot_fired", function(shot_info) 
    if shot_info.result ~= "hit" and not shot_info.manual then
        client.notify("missed shot due to " .. shot_info.result)
    end
end)
```

---

## **override_view(view_setup)**
Type | Name | Description
------------ | ------------- | ------------
[view_setup_t](../sourceengine/types/view_setup_t/) | view_setup | Viewsetup object

OverrideView callback. Lets you override the camera position and angles
```lua
client.register_callback("override_view", function(view_setup)
    view_setup.fov = 110 -- forcing view fov
end)
```

---

## **net_update_end()**

Fired after an entity update packet is received from the server. ( FRAME_NET_UPDATE_END )