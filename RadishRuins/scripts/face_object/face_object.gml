/// @param object_instance

var _object = argument0;

if (!instance_exists(_object)) return 1;

if (_object.x > x)
	image_xscale = 1;
else
	image_xscale = -1;