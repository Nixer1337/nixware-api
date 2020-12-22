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