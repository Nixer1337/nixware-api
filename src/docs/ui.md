# ui table

!!! note
    Elements added from script automaticly saves in config.
    You can find actual variables list in default.cfg.

## Functions

## **add_checkbox(label, var_name, def_value)**

Type | Name | Description
------------ | ------------- | ------------
string | label | Checkbox label
string | var_name | Variable name in config
bool | def_value | Default value

Creates checkbox in menu
```lua
ui.add_checkbox("lua checkbox", "lua_boolean", false)
```
---

## **add_slider_int(label, var_name, min, max, def_value)**

Type | Name | Description
------------ | ------------- | ------------
string | label | Slider label
string | var_name | Variable name in config
number | min | Min value
number | max | Max value
number | def_value | Default value

Creates int slider in menu
```lua
ui.add_slider_int("lua int slider", "lua_integer", 0, 100, 50)
```
---

## **add_combo(label, var_name, items, def_value)**

Type | Name | Description
------------ | ------------- | ------------
string | label | Combobox label
string | var_name | Variable name in config
string array | items | Combobox items
number | def_value | Default value

Creates combo box in menu
```lua
ui.add_combo("lua combo", "lua_integer", { "item1", "item2", "item3" }, 0)
```
---

## **add_slider_float(label, var_name, min, max, def_value)**

Type | Name | Description
------------ | ------------- | ------------
string | label | Slider label
string | var_name | Variable name in config
number | min | Min value
number | max | Max value
number | def_value | Default value

Creates float slider in menu
```lua
ui.add_slider_float("lua float slider", "lua_float", 0.0, 1.0, 0.3)
```
---

## **add_keybind(label, var_name, def_key, def_mode)**

Type | Name | Description
------------ | ------------- | ------------
string | label | Keybind label
string | var_name | Variable name in config
number | def_key | Default key
number | def_mode | Default mode

Creates key bind in menu
```lua
ui.add_keybind("lua key bind", "lua_keybind", 0, 0)
```
---

## **add_color_edit(label, var_name, show_alpha, def_color)**

Type | Name | Description
------------ | ------------- | ------------
string | label | Coloredit label
string | var_name | Variable name in config
bool | show_alpha | Enables the alpha modifer
color | def_color | Default color

Creates color edit in menu
```lua
ui.add_color_edit("lua coloredit", "lua_color", true, color_t.new(255, 255, 255, 255))
```
---

## **get_bool(var_name)**: bool

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable name in config

Getting value from checkbox
```lua
local value = ui.get_bool("legit_enable")
```
---

## **get_int(var_name)**: number

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable name in config

Getting value from int slider
```lua
local value = ui.get_int("visuals_other_nightmode")
```
---

## **get_float(var_name)**: number

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable name in config

Getting value from float slider
```lua
local value = ui.get_float("skins_aspect_ratio")
```
---

## **get_color(var_name)**: [color_t](../types/color_t)

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable name in config

Getting value from color edit
```lua
local value = ui.get_color("misc_ui_color")
```
---

## **set_bool(var_name, val)**

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable name in config
bool | val | Value

Setting checkbox value
```lua
ui.get_sool("legit_enable", false)
```
---

## **set_int(var_name, val)**

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable name in config
number | val | Value

Setting int slider value
```lua
ui.get_int("visuals_other_nightmode", 0)
```
---

## **get_float(var_name, val)**

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable name in config
number | val | Value

Setting float slider value
```lua
ui.set_float("skins_aspect_ratio", 1.333)
```
---

## **set_color(var_name, val)**

Type | Name | Description
------------ | ------------- | ------------
string | var_name | Variable name in config|
[color_t](../types/color_t) | | val | Value

Setting coloredit value
```lua
ui.set_color("misc_ui_color", color_t.new(0, 255, 0, 255))
```
---

## **get_bind_state()**: bool

Returns the bind state
```lua
local bind_active = ui.get_bind_state("legit_autofire_bind")
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