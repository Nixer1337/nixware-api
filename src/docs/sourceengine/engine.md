# engine table

## Functions

## **get_screen_size()**: [vec2_t](../../types/vec2_t)

Getting the screen size
```lua
local screen_size = engine.get_screen_size()
```
---

## **is_connected()**: bool

Returns true if connected to server
```lua
local is_connected = engine.is_connected()
```
---

## **is_in_game()**: bool

Returns true if in game
```lua
local is_in_game = engine.is_in_game()
```
---

## **get_local_player()**: number

Returns the local player index
```lua
local lp_index = engine.get_local_player()
```
---

## **get_level_name_short()**: string

Returns current level name (example: de_mirage)
```lua
local current_map = engine.get_level_name_short()
```
---

## **get_player_for_user_id(userid)**: number
Type | Name | Description
------------ | ------------- | ------------
number | userid | User ID

Returns the player index from user id
```lua
local ent_idx = engine.get_player_for_user_id(userid)
```
---

## **set_view_angles(viewangles)**
Type | Name | Description
------------ | ------------- | ------------
[vec3_t](../../types/vec3_t) | viewangles | Viewangles

Setting the viewangles
```lua
engine.set_view_angles(vec3_t.new(0, 0, 0))
```
---

## **get_view_angles()**: [vec3_t](../../types/vec3_t)

Getting the viewangles
```lua
local view_ang = engine.get_view_angles()
```
---

## **execute_client_cmd(cmd)**
Type | Name | Description
------------ | ------------- | ------------
string | cmd | Console command

Clearing the console
```lua
engine.execute_client_cmd("clear")
```