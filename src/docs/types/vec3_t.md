# vec3_t

Type | Name
------------ | -------------
number | x
number | y
number | z

## Functions

## **new(x, y, z)**: vec3_t
Type | Name
------------ | -------------
number | x
number | y
number | z

Constructor
```lua
local vector = vec3_t.new(0, 0, 0)
```
---

## **length()**: number

Returns the length of vector
```lua
local vector = vec3_t.new(100, 100, 100)
local vector_length = vector:length()
```
---

## **dist_to(other)**: number
Type | Name
------------ | -------------
vec3_t | other

Returns the distance between 2 vectors
```lua
local vector = vec3_t.new(-100, -100, -100)
local vector2 = vec3_t.new(100, 100, 100)

local distance = vector:dist_to(vector2)
```