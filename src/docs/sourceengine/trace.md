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
function deg_to_rad(val) return val * (3.141593 / 180.0) end
function angle_vectors(angles) 
    local cp, sp = math.cos(deg_to_rad(angles.pitch)), math.sin(deg_to_rad(angles.pitch))
    local cy, sy = math.cos(deg_to_rad(angles.yaw)), math.sin(deg_to_rad(angles.yaw))
    local cr, sr = math.cos(deg_to_rad(angles.roll)), math.sin(deg_to_rad(angles.roll))

    local forward = vec3_t.new(0, 0, 0)

    forward.x = cp * cy
    forward.y = cp * sy
    forward.z = -sp

    return forward
end

local verdana = renderer.setup_font("C:/windows/fonts/verdana.ttf", 14, 0)
local m_vecViewOffset = se.get_netvar("DT_BasePlayer", "m_vecViewOffset[0]")

local player_vtable = ffi.cast("int*", client.find_pattern("client.dll", "55 8B EC 83 E4 F8 83 EC 18 56 57 8B F9 89 7C 24 0C") + 0x47)[0]
local get_abs_origin = ffi.cast("float*(__thiscall*)(int)", ffi.cast("int*", player_vtable + 0x28)[0])

function on_paint()
    local local_player = entitylist.get_local_player()
    if local_player == nil or not local_player:is_alive() then 
        return 
    end

    local viewangles = engine.get_view_angles()
    local trace_end = angle_vectors(viewangles)

    local abs_origin = get_abs_origin(local_player:get_address())
    local view_offset = local_player:get_prop_vector(m_vecViewOffset)
    local trace_start = vec3_t.new(abs_origin[0] + view_offset.x, abs_origin[1] + view_offset.y, abs_origin[2] + view_offset.z)

    trace_end.x = trace_start.x + trace_end.x * 8192.0
    trace_end.y = trace_start.y + trace_end.y * 8192.0
    trace_end.z = trace_start.z + trace_end.z * 8192.0

    local trace_out = trace.line(engine.get_local_player(), 0x46004003, trace_start, trace_end)
    local pos2d = se.world_to_screen(trace_out.endpos)

    renderer.text("normal_x:" .. trace_out.normal.x, verdana, pos2d, 0, color_t.new(255, 255, 255, 255))
    pos2d.y = pos2d.y + 15
    renderer.text("normal_y:" .. trace_out.normal.y, verdana, pos2d, 0, color_t.new(255, 255, 255, 255))
    pos2d.y = pos2d.y + 15
    renderer.text("normal_z:" .. trace_out.normal.z, verdana, pos2d, 0, color_t.new(255, 255, 255, 255))
    pos2d.y = pos2d.y + 15
    renderer.text("dist:" .. trace_out.dist, verdana, pos2d, 0, color_t.new(255, 255, 255, 255))
    pos2d.y = pos2d.y + 15
    renderer.text("fraction:" .. trace_out.fraction, verdana, pos2d, 0, color_t.new(255, 255, 255, 255))
    pos2d.y = pos2d.y + 15
    renderer.text("contents:" .. trace_out.contents, verdana, pos2d, 0, color_t.new(255, 255, 255, 255))
    pos2d.y = pos2d.y + 15
    renderer.text("disp_flags:" .. trace_out.disp_flags, verdana, pos2d, 0, color_t.new(255, 255, 255, 255))
    pos2d.y = pos2d.y + 15
    renderer.text("allsolid:" .. tostring(trace_out.allsolid), verdana, pos2d, 0, color_t.new(255, 255, 255, 255))
    pos2d.y = pos2d.y + 15
    renderer.text("startsolid:" .. tostring(trace_out.startsolid), verdana, pos2d, 0, color_t.new(255, 255, 255, 255))
    pos2d.y = pos2d.y + 15
    renderer.text("hit_entity_index:" .. trace_out.hit_entity_index, verdana, pos2d, 0, color_t.new(255, 255, 255, 255))
    pos2d.y = pos2d.y + 15
    renderer.text("hitgroup:" .. trace_out.hitgroup, verdana, pos2d, 0, color_t.new(255, 255, 255, 255))
    pos2d.y = pos2d.y + 15
    renderer.text("hitbox:" .. trace_out.hitbox, verdana, pos2d, 0, color_t.new(255, 255, 255, 255))
    pos2d.y = pos2d.y + 15
end


client.register_callback("paint", on_paint)
```