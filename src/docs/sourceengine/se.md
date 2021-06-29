# se table (source engine utilities)

## Functions

## **world_to_screen(pos)**: [vec2_t](../../types/vec2_t/)

Type | Name | Description
------------ | ------------- | ------------
[vec3_t](../../types/vec3_t/) | pos | World position

Returns two screen coordinates [vec2_t](../../types/vec2_t/), or nil if the world position is not visible on your screen.
```lua
local pos2d = se.world_to_screen(pos)
if pos2d ~= nil then
    renderer.text("pos: " .. pos2d.x .. ", " .. pos2d.y, font, pos2d, 0, color_t.new(255, 255, 255, 255))
end
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

Finds convar by name. Returns nil if failed
```lua
local sv_skyname = se.get_convar("sv_skyname")
```
---

## **get_netvar(table, netvar)**: number
Type | Name | Description
------------ | ------------- | ------------
string | table | Table name
string | netvar | Netvar name

Returns the netvar offset, or nil if failed
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

## **create_interface(module_name, interface_version)**: number
Type | Name | Description
------------ | ------------- | ------------
string | module_name | Module name
string | interface_version | Interface version

Returns the interface address
```lua
local g_model_info = se.create_interface("engine.dll", "VModelInfoClient004")
```