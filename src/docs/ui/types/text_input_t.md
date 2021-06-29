# text_input_t

## Functions

## **get_value()**: string

Returns value from text input
```lua
local some_string_var = ui.add_text_input("some label", "some_key", "default")
local str = some_string_var:get_value()
```
---

## **set_value(val)**
Type | Name | Description
------------ | ------------- | ------------
string | val | Value

Setting text input value
```lua
local some_string_var = ui.add_text_input("some label", "some_key", "default")
some_string_var:set_value("text")
```
---

## **set_visible(val)**
Type | Name | Description
------------ | ------------- | ------------
bool | val | Visiblity

Setting text input visiblity, works only for script variables
```lua
local text_input = ui.add_text_input("some text", "lua_text", "default")
text_input:set_visible(false)
```
---

## **set_label(label)**
Type | Name | Description
------------ | ------------- | ------------
string | label | New label

Setting text input label, works only for script variables
```lua
local text_input = ui.add_text_input("some text", "lua_text", "default")
text_input:set_label("123123")
```