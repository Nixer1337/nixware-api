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