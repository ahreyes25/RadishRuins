/// @param object_index
/// @param range

var _object = argument0;
var _range  = argument1;

if (instance_exists(_object)) {
	if (distance_to_object(_object) <= _range) {
	
		var _x = x;
		var _y = y;
	
		var _return_object = collision_circle(_x, _y, _range, _object, false, true);
	
		if (_return_object != noone)
			return _return_object;
	}
}
return undefined;