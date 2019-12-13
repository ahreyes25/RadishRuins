/// @param fullscreen?

// Exit Condition
if (!exists(obj_ui_controller)) return;

obj_ui_controller.width		= obj_ui_controller.base_width;
obj_ui_controller.height	= obj_ui_controller.base_height;

window_set_size(obj_ui_controller.width, obj_ui_controller.height);
display_set_gui_size(obj_ui_controller.width, obj_ui_controller.height);
surface_resize(application_surface, obj_ui_controller.width, obj_ui_controller.height);
window_set_fullscreen(argument0);