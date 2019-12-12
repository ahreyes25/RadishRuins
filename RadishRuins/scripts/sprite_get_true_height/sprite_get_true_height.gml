/// @param sprite_index

var _height = abs(sprite_get_bbox_top(argument0) - sprite_get_bbox_bottom(argument0)) + 1;
var _scaled_height = _height * abs(image_yscale);
return _scaled_height;