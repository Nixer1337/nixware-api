## Functions

## **get_name():** string

Returns the event name
```lua
local event_name = event:get_name()
```
---

## **get_bool(key_name, def_value):** bool
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
bool | def_value | Default return value if key not found

Returns the boolean value from event
```lua
if event:get_name() == "player_chat" then
    local teamonly = event:get_bool("teamonly", false)
end
```

---

## **get_int(key_name, def_value):** number
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
bool | def_value | Default return value if key not found

Returns the int value from event
```lua
if event:get_name() == "player_death" then
    local attacker = event:get_int("attacker", 0)
end
```

---

## **get_float(key_name, def_value):** number
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
bool | def_value | Default return value if key not found

Returns the float value from event
```lua
if event:get_name() == "bullet_impact" then
    local impact_x = event:get_float("x", 0)
end
```

---

## **get_string(key_name, def_value):** string
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
string | def_value | Default return value if key not found

Returns the float value from event
```lua
if event:get_name() == "player_death" then
    local weapon = event:get_string("weapon", "")
end
```

---

## **set_bool(key_name, value)**
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
bool | value | New value

Changes the key value
```lua
if event:get_name() == "player_chat" then
    event:set_bool("teamonly", false)
end
```

---

## **set_int(key_name, value)**
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
number | value | New value

Changes the key value
```lua
if event:get_name() == "player_death" then
    event:set_int("attacker", 0)
end
```

---

## **set_float(key_name, value)**
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
number | value | New value

Changes the key value
```lua
if event:get_name() == "bullet_impact" then
    event:set_float("x", 0)
end
```

---

## **set_string(key_name, value)**
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
string | value | New value

Changes the key value
```lua
if event:get_name() == "player_death" then
    event:set_string("weapon", "knife_karambit")
end
```
