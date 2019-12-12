/// @param sprite_index

var _width = abs(sprite_get_bbox_left(argument0) - sprite_get_bbox_right(argument0)) + 1;
var _scaled_width = _width * abs(image_xscale);
return _scaled_width;