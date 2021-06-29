# slider_float_t

## Functions

## **get_value()**: number

Returns value from slider float
```lua
local skins_aspect_ratio = ui.get_slider_float("skins_aspect_ratio")
local aspect_ratio = skins_aspect_ratio:get_value()
```
---

## **set_value(val)**
Type | Name | Description
------------ | ------------- | ------------
number | val | Value

Setting slider float value
```lua
local skins_aspect_ratio = ui.get_slider_float("skins_aspect_ratio")
skins_aspect_ratio:set_value(1.333)
```
---

## **set_visible(val)**
Type | Name | Description
------------ | ------------- | ------------
bool | val | Visiblity

Setting slider float visiblity, works only for script variables
```lua
local slider = ui.add_slider_float("lua float slider", "lua_float", 0.0, 1.0, 0.3)
slider:set_visible(false)
```
---

## **set_label(label)**
Type | Name | Description
------------ | ------------- | ------------
string | label | New label

Setting slider float label, works only for script variables
```lua
local slider = ui.add_slider_float("lua float slider", "lua_float", 0.0, 1.0, 0.3)
slider:set_label("123123")
```