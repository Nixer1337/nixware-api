# slider_int_t

## Functions

## **get_value()**: number

Returns value from slider int
```lua
local visuals_other_nightmode = ui.get_slider_int("visuals_other_nightmode")
local nightmode_amt = visuals_other_nightmode:get_value()
```
---

## **set_value(val)**
Type | Name | Description
------------ | ------------- | ------------
number | val | Value

Setting slider int value
```lua
local visuals_other_nightmode = ui.get_slider_int("visuals_other_nightmode")
visuals_other_nightmode:set_value(0)
```
---

## **set_visible(val)**
Type | Name | Description
------------ | ------------- | ------------
bool | val | Visiblity

Setting slider int visiblity, works only for script variables
```lua
local my_slider_int = ui.add_slider_int("lua int slider", "lua_integer", 0, 100, 50)
my_slider_int:set_visible(false)
```