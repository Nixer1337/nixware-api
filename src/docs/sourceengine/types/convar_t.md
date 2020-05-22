# convar_t

## Functions

## **get_int()**: number

Returns the int value
```lua
local convar = se.get_convar("r_jigglebones")
local value = convar:get_int()
```
---

## **get_float()**: number

Returns the float value
```lua
local convar = se.get_convar("r_aspectratio")
local value = convar:get_float()
```
---

## **get_string()**: string

Returns the string
```lua
local convar = se.get_convar("sv_skyname")
local str = convar:get_string()
```
---

## **set_int(value)**
Type | Name
------------ | -------------
number | value

Set the int value
```lua
local convar = se.get_convar("r_jigglebones")
local value = convar:set_int(0)
```
---

## **set_float(value)**
Type | Name
------------ | -------------
number | value

Set the float value
```lua
local convar = se.get_convar("r_aspectratio")
local value = convar:set_float(1.333)
```
---

## **set_string(value)**
Type | Name
------------ | -------------
string | value

Set the string
```lua
local convar = se.get_convar("sv_skyname")
convar:set_string("sky_dust")
```