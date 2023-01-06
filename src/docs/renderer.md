# renderer table

## Functions

## **setup_font(filename, size, flags)**: font

Type | Name | Description
------------ | ------------- | ------------
string | filename | Font file path
number | size | Font size in pixels
number | flags | Freetype font flags

Creates new font
```lua

--[[
    Freetype font flags:
    -- By default, hinting is enabled and the font's native hinter is preferred over the auto-hinter.
        NoHinting = 1 -- Disable hinting. This generally generates 'blurrier' bitmap glyphs when the glyph are rendered in any of the anti-aliased modes.
        NoAutoHint = 2 -- Disable auto-hinter.
        ForceAutoHint = 4 -- Indicates that the auto-hinter is preferred over the font's native hinter.
        LightHinting = 8 -- A lighter hinting algorithm for gray-level modes. Many generated glyphs are fuzzier but better resemble their m_original shape. This is achieved by snapping glyphs to the pixel grid only vertically (Y-axis), as is done by Microsoft's ClearType and Adobe's proprietary font renderer. This preserves inter-glyph spacing in horizontal text.
        MonoHinting = 16 -- Strong hinting algorithm that should only be used for monochrome output.
        Bold = 32 --  Styling: Should we artificially embolden the font?
        Oblique = 64 -- Styling: Should we slant the font, emulating italic style?
        Monochrome = 128 -- Disable anti-aliasing. Combine this with MonoHinting for best results!
]]


local tahoma_bold = renderer.setup_font("C:/windows/fonts/tahomabd.ttf", 50, 0)
```
---

## **setup_texture(filename)**: texture

Type | Name | Description
------------ | ------------- | ------------
string | filename | Texture file path

Creates new texture
```lua
local my_texture = renderer.setup_texture("C:/nixware/example.png")
```
---

## **text(text, font, pos, size, color)**

Type | Name | Description
------------ | ------------- | ------------
string | text | Text
font | font | Font
[vec2_t](../types/vec2_t/) | pos | Text position
number | size | Font size in pixels
[color_t](../types/color_t/) | color | Text color

Drawing the text
```lua
local tahoma_bold = renderer.setup_font("C:/windows/fonts/tahomabd.ttf", 50, 0)

local function on_paint()
    renderer.text("hello world!", tahoma_bold, vec2_t.new(10, 10), 50, color_t.new(255, 255, 255, 255))
end

client.register_callback("paint", on_paint)
```
---

## **texture(tex, from, to, color)**

Type | Name | Description
------------ | ------------- | ------------
texture | tex | Texture
[vec2_t](../types/vec2_t/) | from | Start position
[vec2_t](../types/vec2_t/) | to | End position
[color_t](../types/color_t/) | color | Texture color ( default value: color_t.new(255, 255, 255, 255) )

Drawing the texture
```lua
local my_texture = renderer.setup_texture("C:/nixware/example.png")

local function on_paint()
    renderer.texture(my_texture, vec2_t.new(0, 0), vec2_t.new(500, 500), color_t.new(255, 255, 255, 255))
end

client.register_callback("paint", on_paint)
```
---

## **get_text_size(font, size, text)**: [vec2_t](../types/vec2_t/)

Type | Name | Description
------------ | ------------- | ------------
number | font | Font
number | size | Font size
string | text | Text

Returns the text size
```lua
local tahoma_bold = renderer.setup_font("C:/windows/fonts/tahomabd.ttf", 50, 0)

local function on_paint()
    local hello_world_size = renderer.get_text_size(tahoma_bold, 50, "hello world!")
end

client.register_callback("paint", on_paint)
```
---

## **get_cursor_pos()**: [vec2_t](../types/vec2_t/)

Returns the cursor position
```lua
local function on_paint()
    local mouse_pos = renderer.get_cursor_pos()
end

client.register_callback("paint", on_paint)
```
---

## **line(from, to, color)**

Type | Name | Description
------------ | ------------- | ------------
[vec2_t](../types/vec2_t/) | from | Start position
[vec2_t](../types/vec2_t/) | to | End position
[color_t](../types/color_t/) | color | Color

Drawing the line
```lua
local function on_paint()
    renderer.line(vec2_t.new(5, 5), vec2_t.new(20, 20), color_t.new(255, 0, 0, 255))
end

client.register_callback("paint", on_paint)
```
---

## **rect(from, to, color)**

Type | Name | Description
------------ | ------------- | ------------
[vec2_t](../types/vec2_t/) | from | Start position
[vec2_t](../types/vec2_t/) | to | End position
[color_t](../types/color_t/) | color | Color

Drawing the rect
```lua
local function on_paint()
    renderer.rect(vec2_t.new(5, 5), vec2_t.new(20, 20), color_t.new(255, 0, 0, 255))
end

client.register_callback("paint", on_paint)
```
---

## **rect_filled(from, to, color)**

Type | Name | Description
------------ | ------------- | ------------
[vec2_t](../types/vec2_t/) | from | Start position
[vec2_t](../types/vec2_t/) | to | End position
[color_t](../types/color_t/) | color | Rect color

Drawing the filled rect
```lua
local function on_paint()
    renderer.rect_filled(vec2_t.new(5, 5), vec2_t.new(20, 20), color_t.new(255, 0, 0, 255))
end

client.register_callback("paint", on_paint)
```
---

## **rect_filled_fade(from, to, col_upr_left, col_upr_right, col_bot_right, col_bot_left)**

Type | Name | Description
------------ | ------------- | ------------
[vec2_t](../types/vec2_t/) | from | Start position
[vec2_t](../types/vec2_t/) | to | End position
[color_t](../types/color_t/) | col_upr_left | Upper left color
[color_t](../types/color_t/) | col_upr_right | Upper right color
[color_t](../types/color_t/) | col_bot_right | Bottom right color
[color_t](../types/color_t/) | col_bot_left | Bottom left color

Drawing the faded rect
```lua
local function on_paint()
    renderer.rect_filled_fade(vec2_t.new(5, 5), vec2_t.new(20, 20), color_t.new(255, 0, 0, 255), color_t.new(255, 0, 0, 255), color_t.new(0, 0, 0, 255), color_t.new(0, 0, 0, 255))
end

client.register_callback("paint", on_paint)
```
---

## **circle_fade(pos, radius, color_in, color_out)**

Type | Name | Description
------------ | ------------- | ------------
[vec2_t](../types/vec2_t/) | pos | Position
number | radius | Circle radius
[color_t](../types/color_t/) | color_in | Circle color
[color_t](../types/color_t/) | color_out | Circle color

Drawing the faded circle
```lua
local function on_paint()
    renderer.circle_fade(vec2_t.new(100, 100), 30, color_t.new(255, 0, 0, 0), color_t.new(255, 0, 0, 255))
end

client.register_callback("paint", on_paint)
```
---

## **circle(pos, radius, segments, filled, color)**

Type | Name | Description
------------ | ------------- | ------------
[vec2_t](../types/vec2_t/) | pos | Position
number | radius | Circle radius
number | segments | Circle segments
bool | filled | Filled circle
[color_t](../types/color_t/) | color | Circle color

Drawing the circle
```lua
local function on_paint()
    renderer.circle(vec2_t.new(100, 100), 50, 50, false, color_t.new(255, 0, 0, 255))
end

client.register_callback("paint", on_paint)
```
---

## **filled_polygon(points, color)**

Type | Name | Description
------------ | ------------- | ------------
[vec2_t](../types/vec2_t/) array | points | Points
[color_t](../types/color_t/) | color | Color

Drawing the textured polygon
```lua
local function on_paint()
    -- trigon
    local points = { vec2_t.new(5, 5), vec2_t.new(15, 5), vec2_t.new(10, 15) }
    renderer.filled_polygon(points, color_t.new(255, 255, 255, 255))
end

client.register_callback("paint", on_paint)
```