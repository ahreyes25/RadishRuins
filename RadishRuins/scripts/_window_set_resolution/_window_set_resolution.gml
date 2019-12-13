/// @param width
/// @param height

// Exit Condition
if (!exists(obj_ui_controller)) return;

var _width	= argument0;
var _height	= argument1;
var _camera = camera_get_current();

obj_ui_controller.width			= _width;
obj_ui_controller.height		= _height;
obj_ui_controller.update_res	= true;
global.screen_width				= _width;
global.screen_height			= _height;