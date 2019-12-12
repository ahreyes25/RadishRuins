/// @param size*
/// @param duration*

var _screen_shake_size = (argument_count >= 1) ? argument[0] : 1;
var _screen_shake_time = (argument_count == 2) ? argument[1] : 10;

var _camera = camera_get_current();

_camera.shake_size		= _screen_shake_size * SHAKE_MULT;
_camera.shake_screen	= true;
_camera.alarm[0]		= _screen_shake_time;
_camera.screen_shake_time_base = _screen_shake_time;