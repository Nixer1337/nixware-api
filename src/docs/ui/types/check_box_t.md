# checkbox_t

## Functions

## **get_value()**: bool

Returns value from ui checkbox
```lua
local legit_enable = ui.get_check_box("legit_enable")
local is_legit_enabled = legit_enable:get_value()
```
---

## **set_value(val)**
Type | Name | Description
------------ | ------------- | ------------
bool | val | Value

Setting checkbox value
```lua
local legit_enable = ui.get_check_box("legit_enable")
legit_enable:set_value(false)
```