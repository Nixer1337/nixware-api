# multi_combo_box_t

## Functions

## **get_value(index)**: number
Type | Name | Description
------------ | ------------- | ------------
number | index | Element index

Returns value from multi combo box
```lua
local visuals_other_removals = ui.get_multi_combo_box("visuals_other_removals")
local scope_borders_removal = visuals_other_removals:get_value(0)
```
---

## **set_value(index, val)**
Type | Name | Description
------------ | ------------- | ------------
number | index | Element index
number | val | Value

Setting combobox multi combo box value
```lua
local visuals_other_removals = ui.get_multi_combo_box("visuals_other_removals")
ragebot_active_exploit:set_value(0, true)
```