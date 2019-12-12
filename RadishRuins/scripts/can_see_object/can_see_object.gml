/// @param from_instance?
/// @param to_instance

#region Arguments
if (argument_count == 1) {
	var _from = id;
	var _to = argument[0];
}
else if (argument_count == 2) {
	var _from = argument[0];
	var _to = argument[1];
}
#endregion

if (exists(_from)) return;
if (!exists(_to)) return;

// Check For Facing
var _facing = false;

if (sign(_from.image_xscale) == 1 && _to.x > _from.x)
	_facing = true;
else if (sign(_from.image_xscale) == -1 && _to.x > _from.x)
	_facing = false;
else if (sign(_from.image_xscale) == 1 && _to.x < _from.x)
	_facing = false;
else if (sign(_from.image_xscale) == -1 && _to.x < _from.x)
	_facing = true;

// Check For Line of Sight
var _line_of_sight = false;
var _solid = collision_line(_from.x, _from.y, _to.x, _to.y, obj_solid, false, true);

if (_solid == noone)
	_line_of_sight = true;
else if (_solid.object_index == obj_solid)
	_line_of_sight = false;
	
// Check For Facing & Line of Sight
return (_facing && _line_of_sight);