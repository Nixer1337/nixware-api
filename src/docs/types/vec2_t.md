Type | Name
------------ | -------------
number | x
number | y

## Functions

## **new(x, y)**: vec2_t
Type | Name
------------ | -------------
number | x
number | y

Constructor
```lua
local vector2d = vec2_t.new(0, 0)
```
---

## **length()**: number

Returns the length of vector
```lua
local vector = vec2_t.new(100, 100)
local vector_length = vector:length()
```