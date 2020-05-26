# se table (source engine utilities)

## Functions

## **world_to_screen(pos)**: [vec2_t](../../types/vec2_t/)

Type | Name | Description
------------ | ------------- | ------------
[vec3_t](../../types/vec3_t/) | pos | World position

Getting the 2d pos from world position
```lua
local pos2d = se.world_to_screen(pos)
```
---

## **set_clantag(tag)**

Type | Name | Description
------------ | ------------- | ------------
string | tag | Wanted clantag

Setting the clantag
```lua
se.set_clantag("nixware.cc")
```
---

## **set_name(name)**

Type | Name | Description
------------ | ------------- | ------------
string | name | Wanted name

Setting the name
```lua
se.set_name("nixware.cc")
```
---

## **get_convar(name)**: [convar_t](../types/convar_t/)

Type | Name | Description
------------ | ------------- | ------------
string | name | Console variable name

Returns [convar_t](../types/convar_t/) object
```lua
se.get_convar("r_jigglebones")
```
---

## **get_netvar(table, netvar)**: number
Type | Name | Description
------------ | ------------- | ------------
string | table | Table name
string | netvar | Netvar name

Returns the netvar offset
```lua
se.get_netvar("DT_BasePlayer", "m_iHealth")
```
---

## **get_latency()**: number

Returns current latency
```lua
local ping = se.get_latency()
```
---

---

## **register_event(eventname)**
Type | Name | Description
------------ | ------------- | ------------
string | eventname | Event name

Register the event for [fire_game_event](../../callbacks/#fire_game_eventevent-csgo) callback
```lua
se.register_event("player_death")
```

## **create_interface(module_name, interface_version)**: number
Type | Name | Description
------------ | ------------- | ------------
string | module_name | Module name
string | interface_version | Interface version

Getting the interface address
```lua
local g_model_info = ffi.cast("void*", se.create_interface("engine.dll", "VModelInfoClient004"))
```