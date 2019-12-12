/// @description
/// @param instance
/// @param view?

var _obj  = argument0;
var _view = argument1;

if (!defined(_obj.sprite_index))
	return false;

var _sprite_width  = sprite_get_width(_obj.sprite_index);
var _sprite_height = sprite_get_height(_obj.sprite_index);

// Convert Mouse Coords to Appropriate View Coords
if (_view == 0) {
	var _mx = mouse_x;
	var _my = mouse_y;
}
else if (_view == 1) {
	var _mx = window_mouse_get_x();
	var _my = window_mouse_get_y();
}
else {
	var _mx = window_view_mouse_get_x(_view);
	var _my = window_view_mouse_get_y(_view);
}

// TO DO : Convert Object Coordinates to Match View/Mouse Coordinates

// Check Inside
if (_mx > _obj.x - (_sprite_width  / 2) && _mx < _obj.x + (_sprite_width / 2) &&
	_my > _obj.y - (_sprite_height / 2) && _my < _obj.y + (_sprite_height / 2)) {
		return true;		
}
return false;