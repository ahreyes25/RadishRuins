/// @param flash_alpha*
/// @param flash_color*
/// @param flash_decay*

var _alpha = (argument_count >= 1) ? argument[0] : 0.25;
var _color = (argument_count >= 2) ? argument[1] : c_white;
var _decay = (argument_count == 3) ? argument[2] : 0.1;

var _camera = camera_get_current();

_camera.flash_alpha = _alpha * FLASH_MULT;
_camera.flash_color = _color;
_camera.flash_decay = _decay;