# entity_t

## Functions

## **is_dormant()**: bool

Returns true if entity is in dormant
```lua
local is_dormant = entity:is_dormant()
```

---

## **is_alive()**: bool

Returns true if entity is alive
```lua
local is_alive = entity:is_alive()
```

---

## **get_bbox()**: [rect_t](../../../types/rect_t/)

Returns the bounding box
```lua
local bbox = entity:get_bbox()
```

---

## **get_player_hitbox_pos(hitbox_num)**: [vec3_t](../../../types/vec3_t/)
Type | Name | Description
------------ | ------------- | ------------
number | hitbox_num | Hitbox number

Returns the hitbox pos
```lua
local headpos = entity:get_player_hitbox_pos(0)
```

---

## **get_address()**: number

Returns the entity address
```lua
local addr = entity:get_address()
```

---

## **get_prop_bool(offset)**: bool
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

Returns the boolean value by offset

---

## **get_prop_int(offset)**: number
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

Returns the integer value by offset

---

## **get_prop_float(offset)**: number
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

Returns the float value by offset

---

## **get_prop_short(offset)**: number
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

Returns the short value by offset

---

## **get_prop_double(offset)**: number
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

Returns the double value by offset

---

## **get_prop_vector(offset)**: [vec3_t](../../../types/vec3_t/)
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

Returns the vector by offset

---

## **get_prop_angle(offset)**: [angle_t](../../../types/angle_t/)
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset

Returns the angle by offset

---

## **set_prop_bool(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
bool | value | Value

Setting the boolean value by offset

---

## **set_prop_int(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
number | value | Value

Setting the integer value by offset

---

## **set_prop_float(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
number | value | Value

Setting the float value by offset

---

## **set_prop_short(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
number | value | Value

Setting the short value by offset

---

## **set_prop_double(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
number | value | Value

Setting the double value by offset

---

## **set_prop_vector(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
[vec3_t](../../../types/vec3_t/) | value | Value

Setting the vector by offset

---

## **set_prop_angle(offset, value)**
Type | Name | Description
------------ | ------------- | ------------
number | offset | Prop offset
[angle_t](../../../types/angle_t/) | value | Value

Setting the angle by offset