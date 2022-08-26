# ragebot table

!!! info
    All functions from this table should be called from "create_move" callback.

## Functions

## **ignore_player(index)**
Type | Name | Description
------------ | ------------- | ------------
number | index | Entity index

Disable ragebot on this player
```lua
local entity_index = player:get_index()
ragebot.ignore_player(entity_index)
```
---

## **override_wall_penetration(index, penetrate)**
Type | Name | Description
------------ | ------------- | ------------
number | index | Entity index
bool | penetrate | Enables wall penetration on player

Overrides wall penetration on player
```lua
local entity_index = player:get_index()
ragebot.override_wall_penetration(entity_index, false) -- disable autowall on this player
```
---

## **override_desync_correction(index, correct)**
Type | Name | Description
------------ | ------------- | ------------
number | index | Entity index
bool | correct | Enables resolver on player

Overrides desync correction on player
```lua
local entity_index = player:get_index()
ragebot.override_desync_correction(entity_index, false) -- disable resolver on this player
```
---

## **override_hitscan(index, hitbox, scan)**
Type | Name | Description
------------ | ------------- | ------------
number | index | Entity index
number | hitbox | Hitbox
bool | scan | Enables scan this hitbox

Overrides hitscan on player
```lua
local SCAN_HEAD = 0
local SCAN_CHEST = 1
local SCAN_PELVIS = 2
local SCAN_STOMACH = 3
local SCAN_LEGS = 4
local SCAN_FOOT = 5

-- force head
local entity_index = player:get_index()
ragebot.override_hitscan(entity_index, SCAN_HEAD, true)
ragebot.override_hitscan(entity_index, SCAN_CHEST, false)
ragebot.override_hitscan(entity_index, SCAN_PELVIS, false)
ragebot.override_hitscan(entity_index, SCAN_STOMACH, false)
ragebot.override_hitscan(entity_index, SCAN_LEGS, false)
ragebot.override_hitscan(entity_index, SCAN_FOOT, false)

```
---

## **override_min_damage(index, damage)**
Type | Name | Description
------------ | ------------- | ------------
number | index | Entity index
number | damage | Min damage

Overrides min damage on player
```lua
local entity_index = player:get_index()
ragebot.override_min_damage(entity_index, 10)
```
---

## **override_safe_point(index, mode)**
Type | Name | Description
------------ | ------------- | ------------
number | index | Entity index
number | mode | Safepoint mode

Overrides safepoint mode on player

0 - default

1 - prefer

2 - force

```lua
local entity_index = player:get_index()
ragebot.override_safe_point(entity_index, 2) -- force safepoints
```
---

## **override_max_misses(index, misses)**
Type | Name | Description
------------ | ------------- | ------------
number | index | Entity index
number | misses | Max misses

Overrides max misses on player
```lua
local entity_index = player:get_index()
ragebot.override_max_misses(entity_index, 0)
```
---

## **override_head_scale(index, scale)**
Type | Name | Description
------------ | ------------- | ------------
number | index | Entity index
number | scale | Head pointscale

Overrides head point scale on player
```lua
local entity_index = player:get_index()
ragebot.override_head_scale(entity_index, 50)
```
---

## **override_body_scale(index, scale)**
Type | Name | Description
------------ | ------------- | ------------
number | index | Entity index
number | scale | Body pointscale

Overrides body point scale on player
```lua
local entity_index = player:get_index()
ragebot.override_body_scale(entity_index, 50)
```
---
