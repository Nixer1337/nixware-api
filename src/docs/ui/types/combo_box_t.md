# combo_box_t

## Functions

## **get_value()**: number

Returns value from combo box
```lua
local ragebot_active_exploit = ui.get_combo_box("ragebot_active_exploit")
local active_exploit = ragebot_active_exploit:get_value()
```
---

## **set_value(val)**
Type | Name | Description
------------ | ------------- | ------------
number | val | Value

Setting combobox value
```lua
local ragebot_active_exploit = ui.get_combo_box("ragebot_active_exploit")
ragebot_active_exploit:set_value(0)
```
---

## **set_visible(val)**
Type | Name | Description
------------ | ------------- | ------------
bool | val | Visiblity

Setting combobox visiblity, works only for script variables
```lua
local my_combo = ui.add_combo_box("lua combo", "lua_integer", { "item1", "item2", "item3" }, 0)
my_combo:set_visible(false)
```