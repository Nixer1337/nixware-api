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

---

## **set_visible(val)**
Type | Name | Description
------------ | ------------- | ------------
bool | val | Visiblity

Setting checkbox visiblity, works only for script variables
```lua
local test_var = ui.add_check_box("test", "test_var", false)
test_var:set_visible(false)
```