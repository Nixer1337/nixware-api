# color_edit_t

## Functions

## **get_value()**: color_t

Returns value from color edit
```lua
local misc_ui_color = ui.get_color_edit("misc_ui_color")
local ui_color = misc_ui_color:get_value()
```
---

## **set_value(val)**
Type | Name | Description
------------ | ------------- | ------------
color_t | val | Value

Setting color edit value
```lua
local misc_ui_color = ui.get_color_edit("misc_ui_color")
misc_ui_color:set_value(color_t.new(0, 255, 0, 255))
```
---

## **set_visible(val)**
Type | Name | Description
------------ | ------------- | ------------
bool | val | Visiblity

Setting color edit visiblity, works only for script variables
```lua
local my_coloredit = ui.add_color_edit("lua coloredit", "lua_color", true, color_t.new(255, 255, 255, 255))
my_coloredit:set_visible(false)
```

---

## **set_label(label)**
Type | Name | Description
------------ | ------------- | ------------
string | label | New label

Setting color edit label, works only for script variables
```lua
local my_coloredit = ui.add_color_edit("lua coloredit", "lua_color", true, color_t.new(255, 255, 255, 255))
my_coloredit:set_label("123123")
```