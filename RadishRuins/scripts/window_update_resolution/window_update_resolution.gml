/// @param width
/// @param height

// Exit Condition
if (!exists(obj_ui_controller))
	return;

var _width	= argument0;
var _height	= argument1;

global.screen_width		= _width;
global.screen_height	= _height;
aspect_ratio			= global.screen_width / global.screen_height;
		
// Maintain Aspect Ratio		
if (global.screen_width >= global.screen_height)
	global.screen_width = global.screen_height * aspect_ratio;
	
// Resize Window -- Desktop Only
window_set_size(global.screen_width, global.screen_height);
		
// Resize Surfaces
display_set_gui_size(global.screen_width, global.screen_height);
surface_resize(application_surface, global.screen_width / 2, global.screen_height / 2);

// Update Quads
obj_ui_controller.quad_width	= surface_get_width(application_surface)  / 2;
obj_ui_controller.quad_height	= surface_get_height(application_surface) / 2;
	
// Center Window
obj_ui_controller.alarm[0] = 1;

// Update Camera
var _camera = camera_get_current();
if (exists(_camera)) {
	_camera.width_current	= global.screen_width  * 0.75;
	_camera.height_current	= global.screen_height * 0.75;
}