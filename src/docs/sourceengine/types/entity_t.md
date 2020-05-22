## Functions

## **is_dormant()**: bool

Returns true if entity is in dormant
```lua
local is_dormant = emtity:is_dormant()
```

---

## **is_alive()**: bool

Returns true if entity is alive
```lua
local is_alive = emtity:is_alive()
```

---

## **get_bbox()**: [rect_t](../../../types/rect_t)

Returns the bounding box
```lua
local bbox = emtity:get_bbox()
```

---

## **get_player_hitbox_pos(hitbox_num)**: [vec3_t](../../../types/vec3_t)
Type | Name | Description
------------ | ------------- | ------------
number | hitbox_num | Hitbox number

Returns the hitbox pos
```lua
local headpos = emtity:get_player_hitbox_pos(0)
```

---

## **get_address()**: number

Returns the entity address
```lua
local addr = emtity:get_address()
```

---

## **get_prop_bool(offset)**: bool
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

---

## **get_prop_int(offset)**: number
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

---

## **get_prop_float(offset)**: number
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

---

## **get_prop_short(offset)**: number
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

---

## **get_prop_double(offset)**: number
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

---

## **get_prop_vector(offset)**: [vec3_t](../../../types/vec3_t)
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

---

## **get_prop_angle(offset)**: [angle_t](../../../types/angle_t)
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

---

## **set_prop_bool(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
bool | value | Value

---

## **set_prop_int(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
number | value | Value

---

## **set_prop_float(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
number | value | Value

---

## **set_prop_short(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
number | value | Value

---

## **set_prop_double(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
number | value | Value

---

## **set_prop_vector(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
[vec3_t](../../../types/vec3_t) | value | Value

---

## **set_prop_angle(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
[angle_t](../../../types/angle_t) | value | Value