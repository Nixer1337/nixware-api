# game_event_t

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
client.register_callback("player_chat", function(event)
    local teamonly = event:get_bool("teamonly", false)
end)
```

---

## **get_int(key_name, def_value):** number
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
bool | def_value | Default return value if key not found

Returns the int value from event
```lua
client.register_callback("player_death", function(event)
    local attacker = event:get_int("attacker", 0)
end)
```

---

## **get_float(key_name, def_value):** number
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
bool | def_value | Default return value if key not found

Returns the float value from event
```lua
client.register_callback("bullet_impact", function(event)
    local impact_x = event:get_float("x", 0)
end)
```

---

## **get_string(key_name, def_value):** string
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
string | def_value | Default return value if key not found

Returns the string from event
```lua
client.register_callback("bullet_impact", function(event)
    local weapon = event:get_string("weapon", "")
end)
```

---

## **set_bool(key_name, value)**
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
bool | value | New value

Changes the key value
```lua
client.register_callback("player_chat", function(event)
    event:set_bool("teamonly", false)
end)
```

---

## **set_int(key_name, value)**
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
number | value | New value

Changes the key value
```lua
client.register_callback("player_death", function(event)
    event:set_int("attacker", 0)
end)
```

---

## **set_float(key_name, value)**
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
number | value | New value

Changes the key value
```lua
client.register_callback("bullet_impact", function(event)
    event:set_float("x", 0)
end)
```

---

## **set_string(key_name, value)**
Type | Name | Description
------------ | ------------- | ------------
string | key_name | Event key name
string | value | New value

Changes the key value
```lua
client.register_callback("player_death", function(event)
    event:set_string("weapon", "knife_karambit")
end)
```
