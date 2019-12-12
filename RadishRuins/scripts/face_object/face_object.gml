/// @param object_instance

var _object = argument0;

if (!exists(_object))
	return DIR.RIGHT;

if (_object.x > x)
	image_xscale = DIR.RIGHT;
else
	image_xscale = DIR.LEFT;