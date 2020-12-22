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