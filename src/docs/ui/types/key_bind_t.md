# key_bind_t

## Functions

## **get_key()**: number

Returns the key code from keybind
```lua
local ragebot_enable_bind = ui.get_key_bind("ragebot_enable_bind")
local ragebot_enable_bind_key = ragebot_enable_bind:get_key()
```
---

## **get_type()**: number

Returns keybind type
```lua
local ragebot_enable_bind = ui.get_key_bind("ragebot_enable_bind")
local ragebot_enable_bind_type = ragebot_enable_bind:get_type()
```
---

## **set_key(key)**
Type | Name | Description
------------ | ------------- | ------------
number | key | Key code

Setting the key for keybind
```lua
-- https://docs.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes
local ragebot_enable_bind = ui.get_key_bind("ragebot_enable_bind")
ragebot_enable_bind:set_key(0x01) -- Left mouse button
```
---

## **set_type(type)**
Type | Name | Description
------------ | ------------- | ------------
number | type | Bind type

Setting the type for keybind
```lua
local ragebot_enable_bind = ui.get_key_bind("ragebot_enable_bind")
ragebot_enable_bind:set_type(0) -- always on
```
---

## **is_active()**: bool

Returns keybind state
```lua
local ragebot_enable_bind = ui.get_key_bind("ragebot_enable_bind")
local bind_active = ragebot_enable_bind:is_active()
```