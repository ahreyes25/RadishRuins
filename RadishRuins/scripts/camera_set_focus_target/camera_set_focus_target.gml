/// @param target
/// @param duration
/// @param move_speed*

#region Arguments
if (argument_count == 2) {
	var _target = argument[0];
	var _time	= argument[1];
	var _speed  = undefined;
}
else if (argument_count == 3) {
	var _target = argument[0];
	var _time	= argument[1];
	var _speed	= argument[2];
}
#endregion

var _camera = camera_get_current();

_camera.focus_target_current = _target;
_camera.leading_current = false;

if (defined(_speed))
	_camera.move_speed_scale = _speed;

if (_time > 0) {
	_camera.alarm[1] = _time;
	_camera.focus_target_time_base = _time;
}