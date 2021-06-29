# key_bind_t

## Functions

## **get_key()**: number

Returns the key code from keybind
```lua
local rage_enable_bind = ui.get_key_bind("rage_enable_bind")
local rage_enable_bind_key = rage_enable_bind:get_key()
```
---

## **get_type()**: number

Returns keybind type
```lua
local rage_enable_bind = ui.get_key_bind("rage_enable_bind")
local rage_enable_bind_type = rage_enable_bind:get_type()
```
---

## **set_key(key)**
Type | Name | Description
------------ | ------------- | ------------
number | key | Key code

Setting the key for keybind
```lua
-- https://docs.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes
local rage_enable_bind = ui.get_key_bind("rage_enable_bind")
rage_enable_bind:set_key(0x01) -- Left mouse button
```
---

## **set_type(type)**
Type | Name | Description
------------ | ------------- | ------------
number | type | Bind type

Setting the type for keybind
```lua
local rage_enable_bind = ui.get_key_bind("rage_enable_bind")
rage_enable_bind:set_type(0) -- always on
```
---

## **is_active()**: bool

Returns keybind state
```lua
local rage_enable_bind = ui.get_key_bind("rage_enable_bind")
local bind_active = rage_enable_bind:is_active()
```
---

## **set_visible(val)**
Type | Name | Description
------------ | ------------- | ------------
bool | val | Visiblity

Setting keybind visiblity, works only for script variables
```lua
local my_keybind = ui.add_key_bind("lua key bind", "lua_keybind", 0, 0)
my_keybind:set_visible(false)
```
---

## **set_label(label)**
Type | Name | Description
------------ | ------------- | ------------
string | label | New label

Setting keybind label, works only for script variables
```lua
local my_keybind = ui.add_key_bind("lua key bind", "lua_keybind", 0, 0)
my_keybind:set_label("123123")
```