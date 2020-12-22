# ui table

## Functions

## **add_check_box(label, var_name, def_value)**: [check_box_t](../types/check_box_t)

Type | Name | Description
------------ | ------------- | ------------
string | label | Checkbox label
string | var_name | Variable key
bool | def_value | Default value

Creates checkbox in menu
```lua
local my_checkbox = ui.add_check_box("lua checkbox", "lua_boolean", false)
```
---

## **get_check_box(var_name)**: [check_box_t](../types/check_box_t)

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable key

Returns checkbox object from menu
```lua
local my_checkbox = ui.get_check_box("legit_enable")
```
---

## **add_slider_int(label, var_name, min, max, def_value)**: [slider_int_t](../types/slider_int_t)

Type | Name | Description
------------ | ------------- | ------------
string | label | Slider label
string | var_name | Variable key
number | min | Min value
number | max | Max value
number | def_value | Default value

Creates int slider in menu
```lua
local my_slider_int = ui.add_slider_int("lua int slider", "lua_integer", 0, 100, 50)
```
---

## **get_slider_int(var_name)**: [slider_int_t](../types/slider_int_t)

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable key

Returns slider int object from menu
```lua
local visuals_other_nightmode = ui.get_slider_int("visuals_other_nightmode")
```
---

## **add_combo_box(label, var_name, items, def_value)**: [combo_box_t](../types/combo_box_t)

Type | Name | Description
------------ | ------------- | ------------
string | label | Combobox label
string | var_name | Variable key
string array | items | Combo items
number | def_value | Default value

Creates combo box in menu
```lua
local my_combo = ui.add_combo_box("lua combo", "lua_integer", { "item1", "item2", "item3" }, 0)
```
---

## **get_combo_box(var_name)**: [combo_box_t](../types/combo_box_t)

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable key

Returns combo box object from menu
```lua
local ragebot_active_exploit = ui.get_combo_box("ragebot_active_exploit")
```
---

## **add_multi_combo_box(label, var_name, items, def_values)**: [multi_combo_box_t](../types/multi_combo_box_t)

Type | Name | Description
------------ | ------------- | ------------
string | label | Multicombobox label
string | var_name | Variable key
string array | items | Items
number | def_value | Default values

Creates combo box in menu
```lua
local my_multi_combo = ui.add_multi_combo_box("multi combo", "lua_multi_combo", { "item1", "item2", "item3" }, { false, false, false })
```
---

## **get_multi_combo_box(var_name)**: [multi_combo_box_t](../types/multi_combo_box_t)

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable key

Returns multi combo box object from menu
```lua
local visuals_other_removals = ui.get_multi_combo_box("visuals_other_removals")
```
---

## **add_text_input(label, var_name, def_value)**: [text_input_t](../types/text_input_t)

Type | Name | Description
------------ | ------------- | ------------
string | label | Slider label
string | var_name | Variable key
string | def_value | Default value

Creates text input in menu
```lua
local text_input = ui.add_text_input("some text", "lua_text", "default")
```
---

## **add_slider_float(label, var_name, min, max, def_value)**: [slider_float_t](../types/slider_float_t)

Type | Name | Description
------------ | ------------- | ------------
string | label | Slider label
string | var_name | Variable key
number | min | Min value
number | max | Max value
number | def_value | Default value

Creates float slider in menu
```lua
local slider = ui.add_slider_float("lua float slider", "lua_float", 0.0, 1.0, 0.3)
```
---

## **get_slider_float(var_name)**: [slider_float_t](../types/slider_float_t)

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable key

Returns slider float object from menu
```lua
local slider = local skins_aspect_ratio = ui.get_slider_float("skins_aspect_ratio")
```
---

## **add_key_bind(label, var_name, def_key, def_mode)**: [key_bind_t](../types/key_bind_t)

Type | Name | Description
------------ | ------------- | ------------
string | label | Keybind label
string | var_name | Variable key
number | def_key | Default key
number | def_mode | Default mode

Creates key bind in menu
```lua
local my_keybind = ui.add_key_bind("lua key bind", "lua_keybind", 0, 0)
```
---

## **get_key_bind(var_name)**: [key_bind_t](../types/key_bind_t)

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable key

Returns keybind object from menu
```lua
local ragebot_enable_bind = ui.get_key_bind("ragebot_enable_bind")
```
---

## **add_color_edit(label, var_name, show_alpha, def_color)**: [color_edit_t](../types/color_edit_t)

Type | Name | Description
------------ | ------------- | ------------
string | label | Coloredit label
string | var_name | Variable key
bool | show_alpha | Enables the alpha modifer
color | def_color | Default color

Creates color edit in menu
```lua
local my_coloredit = ui.add_color_edit("lua coloredit", "lua_color", true, color_t.new(255, 255, 255, 255))
```
---

## **get_color_edit(var_name)**: [color_edit_t](../types/color_edit_t)

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable key

Returns color edit object from menu
```lua
local misc_ui_color = ui.get_color_edit("misc_ui_color")
```
---

## **is_visible()**: bool

Returns true if menu opened
```lua
local is_menu_opened = ui.is_visible()
```
---

## **set_visible(value)**

Type | Name | Description
------------ | ------------- | ------------
bool | value | Set menu visible or not 

Setting menu visibility
```lua
-- close menu
ui.set_visible(false)
```