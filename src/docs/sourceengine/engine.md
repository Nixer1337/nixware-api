# engine table

## Functions

## **get_screen_size()**: [vec2_t](../../types/vec2_t/)

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

## **get_player_info(index)**: [player_info_t](../types/player_info_t/)
Type | Name | Description
------------ | ------------- | ------------
number | index | Entity index

Returns the [player_info_t](../types/player_info_t/) object
```lua
local local_info = engine.get_player_info(engine.get_local_player())
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
[angle_t](../../types/angle_t/) | viewangles | Viewangles

Setting the viewangles
```lua
engine.set_view_angles(angle_t.new(0, 0, 0))
```
---

## **get_view_angles()**: [angle_t](../../types/angle_t/)

Getting the viewangles
```lua
local view_ang = engine.get_view_angles()
```
---

## **execute_client_cmd(cmd)**
Type | Name | Description
------------ | ------------- | ------------
string | cmd | Console command

Executes command in console
```lua
engine.execute_client_cmd("clear")
```