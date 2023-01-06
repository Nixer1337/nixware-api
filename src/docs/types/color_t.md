# color_t

Type | Name | Description
------------ | ------------- | -------------
number | red | Red color range as a percentage in the range [0.0, 1.0]
number | green | Green color range as a percentage in the range [0.0, 1.0]
number | blue | Blue color range as a percentage in the range [0.0, 1.0]
number | alpha | Alpha color range as a percentage in the range [0.0, 1.0]

## Functions

## **new(red, green, blue, alpha)**: color_t
Type | Name | Description
------------ | ------------- | -------------
number | red | Red color range as a percentage in the range [0, 255]
number | green | Green color range as a percentage in the range [0, 255]
number | blue | Blue color range as a percentage in the range [0, 255]
number | alpha | Alpha color range as a percentage in the range [0, 255]

Constructor
```lua
local color = color_t.new(255, 0, 0, 255)
```