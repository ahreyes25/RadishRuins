/// @description	Create a new polygon fixture and assign it to an object.
/// @param density
/// @param restitution
/// @param collision_group
/// @param linear_damping
/// @param angular_damping
/// @param friction
/// @param awake?
/// @param instance_to_bind
/// @param array_of_points

var _density			= argument0;
var _restitution		= argument1;
var _collision_group	= argument2;
var _linear_damping		= argument3;
var _angular_damping	= argument4;
var _friction			= argument5;
var _awake				= argument6;
var _instance_to_bind	= argument7;
var _array_of_points	= argument8;

if (array_length_1d(_array_of_points) <= 2)
	return undefined;

var _fixture = physics_fixture_create();

physics_fixture_set_polygon_shape(_fixture);
physics_fixture_set_density(_fixture, _density);
physics_fixture_set_restitution(_fixture, _restitution);
physics_fixture_set_collision_group(_fixture, _collision_group);
physics_fixture_set_linear_damping(_fixture, _linear_damping);
physics_fixture_set_angular_damping(_fixture, _angular_damping);
physics_fixture_set_friction(_fixture, _friction);
physics_fixture_set_awake(_fixture, _awake);

for (var i = 0; i < array_length_1d(_array_of_points); i++) {
	var _points = _array_of_points[i];
	var _x = _points[_.X];
	var _y = _points[_.Y];
	physics_fixture_add_point(_fixture, _x, _y);
}
physics_fixture_bind(_fixture, _instance_to_bind);

_instance_to_bind.phy_position_x = _instance_to_bind.x;
_instance_to_bind.phy_position_y = _instance_to_bind.y;
_instance_to_bind.phy_active	 = true;

return _fixture;