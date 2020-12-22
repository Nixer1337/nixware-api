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