# trace table

## Functions

## **line(skip_entindex, mask, start, end)**: [trace_t](../types/trace_t/)
Type | Name | Description
------------ | ------------- | ------------
number | skip_entindex | Skip entity index
number | mask | Trace mask
[vec3_t](../../types/vec3_t/) | start | Start trace position
[vec3_t](../../types/vec3_t/) | end | End trace position

Returns the trace object
```lua
local trace = trace.line(engine.get_local_player(), mask, start, end)
```