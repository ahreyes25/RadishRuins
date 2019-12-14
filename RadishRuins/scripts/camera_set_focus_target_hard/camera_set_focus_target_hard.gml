/// @param target
/// @param duration

var _target = argument[0];
var _time	= argument[1];

var _camera = camera_get_current();

_camera.focus_target_current	= _target;
_camera.leading_current			= false;
_camera.focus_target_hard		= true;

if (_time > 0) {
	_camera.alarm[3] = _time;
	_camera.focus_target_time_base = _time;
}