/// @param zoom_factor
/// @param duration
/// @param zoom_speed*

#region Arguments
if (argument_count == 2) {
	var _zoom	= argument[0];
	var _time	= argument[1];
	var _speed	= undefined;
}
else if (argument_count == 3) {
	var _zoom	= argument[0];
	var _time	= argument[1];
	var _speed	= argument[2];
}
#endregion

var _camera = camera_get_current();

_camera.zoom_target = _zoom;

if (defined(_speed))
	_camera.zoom_speed = _speed;
	
if (_time > 0) {
	_camera.alarm[2] = _time;
	_camera.focus_zoom_time_base = _time;
}