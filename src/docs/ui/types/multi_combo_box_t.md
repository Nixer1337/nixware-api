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

Setting multi combo box value
```lua
local visuals_other_removals = ui.get_multi_combo_box("visuals_other_removals")
ragebot_active_exploit:set_value(0, true)
```
---

## **set_visible(val)**
Type | Name | Description
------------ | ------------- | ------------
bool | val | Visiblity

Setting multi combo box visiblity, works only for script variables
```lua
local my_multi_combo = ui.add_multi_combo_box("multi combo", "lua_multi_combo", { "item1", "item2", "item3" }, { false, false, false })
my_multi_combo:set_visible(false)
```
---

## **set_label(label)**
Type | Name | Description
------------ | ------------- | ------------
string | label | New label

Setting multi combo box label, works only for script variables
```lua
local my_multi_combo = ui.add_multi_combo_box("multi combo", "lua_multi_combo", { "item1", "item2", "item3" }, { false, false, false })
my_multi_combo:set_label("123123")
```
---

## **set_items(items)**
Type | Name | Description
------------ | ------------- | ------------
string array | items | New items

Setting combobox items, works only for script variables
```lua
local my_multi_combo = ui.add_multi_combo_box("multi combo", "lua_multi_combo", { "item1", "item2", "item3" }, { false, false, false })
my_multi_combo:set_items( { "1", "2", "3", "4" })
```