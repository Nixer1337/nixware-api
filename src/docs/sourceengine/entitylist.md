# entitylist table

## Functions

## **get_highest_entity_index()**: number

Returns the highest entity index
```lua
local idx = entitylist.get_highest_entity_index()
```
---

## **get_local_player()**: [entity_t](../types/entity_t/)

Returns the local player object
```lua
local localplayer = entitylist.get_local_player()
```
---

## **get_entity_by_index(index)**: [entity_t](../types/entity_t/)
Type | Name | Description
------------ | ------------- | ------------
number | index | Entity index

Returns the [entity_t](../types/entity_t/) object by index
```lua
local lp = entitylist.get_entity_by_index(entitylist.get_local_player())
```
---

## **get_entity_from_handle(handle)**: [entity_t](../types/entity_t/)
Type | Name | Description
------------ | ------------- | ------------
number | handle | Entity handle

Returns the [entity_t](../types/entity_t/) object by handle

```lua
local m_hActiveWeapon = se.get_netvar("DT_BaseCombatCharacter", "m_hActiveWeapon")

-- getting local weapon
local active_weapon_handle = local_player:get_prop_int(m_hActiveWeapon)
local active_weapon = entitylist.get_entity_from_handle(active_weapon_handle)
```
---

## **get_players(type)**: [entity_t](../types/entity_t/) array
Type | Name | Description
------------ | ------------- | ------------
number | type | Type

Returns the players array

0 - enemies only

1 - teammates only

2 - all players

```lua
  local players = entitylist.get_players(0)
  for i = 1, #players do
      local player = players[i]
  end
```
---

## **get_entities_by_class_name(classname)**: [entity_t](../types/entity_t/) array
Type | Name | Description
------------ | ------------- | ------------
string | classname | Class name

Returns the entities array by class name
```lua
  local entities = entitylist.get_entities_by_class_name("CFogController")
```
---

## **get_entities_by_class_id(classid)**: [entity_t](../types/entity_t/) array
Type | Name | Description
------------ | ------------- | ------------
number | classid | Class id

Returns the entities array by class id
```lua
  local entities = entitylist.get_entities_by_class_id(78)
```