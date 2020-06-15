# surface table

## Functions

## **play_sound(soundname)**
Type | Name | Description
------------ | ------------- | ------------
string | soundname | Sound name

Playing the sound
```lua
surface.play_sound("resource/warning.wav")
```
---

## **get_cursor_pos()**: [vec2_t](../../types/vec2_t/)
Returns the cursor position
```lua
local cursor_pos = surface.get_cursor_pos()
```
---

## **setup_font(fontname, tall, weight, blur, scanlines, flags)**: font
Type | Name | Description
------------ | ------------- | ------------
string | fontname | Windows font name
number | tall | Font tall
number | weight | Font weight
number | blur | Font blur
number | scanlines | Font scanlines
number | flags | Font flags

Creating the font

Surface font flags: [developer.valvesoftware.com/wiki/EFontFlags](https://developer.valvesoftware.com/wiki/EFontFlags)
```lua
local font = surface.setup_font("Tahoma", 16, 500, 0, 1, 0x200) 
```
---

## **draw_filled_rect(start_pos_x, start_pos_y, end_pos_x, end_pos_y)**
Type | Name | Description
------------ | ------------- | ------------
number | start_pos_x | Start position x
number | start_pos_y | Start position y
number | end_pos_x | End position x
number | end_pos_y | End position y

Drawing the filled rect
```lua
surface.draw_set_color(color_t.new(255, 0, 0, 255)) 
surface.draw_filled_rect(5, 5, 10, 10)
```
---

## **draw_filled_rect_fade(start_pos_x, start_pos_y, end_pos_x, end_pos_y, first_alpha, next_alpha, is_horisontal)**
Type | Name | Description
------------ | ------------- | ------------
number | start_pos_x | Start position x
number | start_pos_y | Start position y
number | end_pos_x | End position x
number | end_pos_y | End position y
number | first_alpha | First Alpha
number | next_alpha | Next Alpha
bool | is_horisontal | Is horisontal

Drawing the faded rect
```lua
surface.draw_set_color(color_t.new(255, 0, 0, 255)) 
surface.draw_filled_rect_fade(5, 5, 10, 10, 255, 0, false)
```
---

## **draw_outlined_rect(start_pos_x, start_pos_y, end_pos_x, end_pos_y)**
Type | Name | Description
------------ | ------------- | ------------
number | start_pos_x | Start position x
number | start_pos_y | Start position y
number | end_pos_x | End position x
number | end_pos_y | End position y

Drawing the rect
```lua
surface.draw_set_color(color_t.new(255, 0, 0, 255)) 
surface.draw_outlined_rect(5, 5, 10, 10)
```
---

## **draw_set_color(color)**
Type | Name | Description
------------ | ------------- | ------------
[color_t](../../types/color_t/) | color | Color

Setting color of the next drawing element
```lua
surface.draw_set_color(color)
```
---

## **get_text_size(font, text)**: [vec2_t](../../types/vec2_t/)
Type | Name | Description
------------ | ------------- | ------------
font | font | Font
string | text | Text

Returns the text size
```lua
local size = surface.get_text_size(font, "string")
```
---

## **draw_line(start_pos_x, start_pos_y, end_pos_x, end_pos_y)**
Type | Name | Description
------------ | ------------- | ------------
number | start_pos_x | Start position x
number | start_pos_y | Start position y
number | end_pos_x | End position x
number | end_pos_y | End position y

Drawing horisontal line
```lua
surface.draw_set_color(color_t.new(255, 0, 0, 255))
surface.draw_line(5, 5, 20, 5)
```
---

## **draw_outlined_circle(pos_x, pos_y, radius, segments)**
Type | Name | Description
------------ | ------------- | ------------
number | pos_x | Position x
number | pos_y | Position y
number | radius | Radius
number | segments | Segments

Drawing the circle
```lua
surface.draw_set_color(color_t.new(255, 0, 0, 255))
surface.draw_outlined_circle(500, 500, 30, 30)
```
---

## **draw_set_text_font(font)**
Type | Name | Description
------------ | ------------- | ------------
font | font | Font

Setting the next text font
```lua
-- setup this font only once
local font = surface.setup_font("Tahoma", 16, 500, 0, 1, 0x200) 

surface.draw_set_text_font(font)
```
---

## **draw_set_text_color(color)**
Type | Name | Description
------------ | ------------- | ------------
[color_t](../../types/color_t/) | color | Color

Setting the next text color
```lua
surface.draw_set_text_color(color_t.new(255, 0, 0, 255))
```
---

## **draw_set_text_pos(pos_x, pos_y)**
Type | Name | Description
------------ | ------------- | ------------
number | pos_x | Position x
number | pos_y | Position y

Setting the next text pos
```lua
surface.draw_set_text_pos(5, 5)
```
---

## **draw_print_text(text)**
Type | Name | Description
------------ | ------------- | ------------
string | text | Text

Print text
```lua
surface.draw_print_text(text)
```
---

## **draw_textured_polygon(points_num, points, color)**
Type | Name | Description
------------ | ------------- | ------------
number | points_num | Num points
[vec2_t](../../types/vec2_t/) array | points | Points
[color_t](../../types/color_t/) | color | Color

Render the textured polygon
```lua
-- https://i.imgur.com/OjcQf6i.png
local points = { vec2_t.new(5, 5), vec2_t.new(15, 5), vec2_t.new(10, 15) }
surface.draw_textured_polygon(3, points, color_t.new(255, 0, 0, 255))
```