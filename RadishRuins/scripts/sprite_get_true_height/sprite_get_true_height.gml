/// @param sprite_index

var _sprite = (argument_count == 1) ? argument[0] : sprite_index;

return abs(sprite_get_bbox_top(_sprite) - sprite_get_bbox_bottom(_sprite)) + 1;