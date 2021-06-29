# debugoverlay table

## Functions

## **add_box_overlay(origin, mins, max, orientation, color, duration)**
Type | Name
------------ | -------------
[vec3_t](../../types/vec3_t/) | origin
[vec3_t](../../types/vec3_t/) | mins
[vec3_t](../../types/vec3_t/) | max
[angle_t](../../types/angle_t/) | rotation
[color_t](../../types/color_t/) | color
number | duration

Drawing the box overlay for a specific time
```lua
debugoverlay.add_box_overlay(world_pos, vec3_t.new(-2, -2, -2), vec3_t.new(2, 2, 2), angle_t.new(0, 0, 0), color_t.new(255, 255, 255, 255), 5.0)
```
---

## **add_sphere_overlay(origin, radius, theta, phi, color, duration)**
Type | Name
------------ | -------------
[vec3_t](../../types/vec3_t/) | origin
number | radius
number | theta
number | phi
[color_t](../../types/color_t/) | color
number | duration

Drawing the sphere overlay for a specific time
```lua
debugoverlay.add_sphere_overlay(world_pos, 3, 10, 10, color_t.new(255, 255, 255, 255), 5.0)
```
---