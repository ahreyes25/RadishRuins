// Focus Target
focus_target_current	= obj_player;
focus_target_default	= focus_target_current;
focus_target_time		= undefined;
if (exists(focus_target_current)) {
	x = focus_target_current.x;
	y = focus_target_current.y;
}

// Camera Zoom
zoom_current	= 1.0;
zoom_default	= zoom_current;
zoom_speed		= 0.01;
zoom_target		= undefined;

// Screen Shake 
shake_size		= 0;
shake_screen	= false;

// Screen Flash
flash_alpha		= 0;
flash_color		= c_white;
flash_decay		= 0;

// Leading
leading_current_x		= true;
leading_default_x		= leading_current_x;
leading_current_y		= true;
leading_default_y		= leading_current_y;
lead_distance_current_x	= 50;
lead_distance_default_x	= lead_distance_current_x;

// Create Camera
x_to					= x;
y_to					= y;
width_default			= 640;
width_current			= width_default; 
height_default			= 480;
height_current			= height_default

move_speed_scale		= 0.1;

camera	= camera_create();
viewmat = matrix_build_lookat(x, y, -room_height - 100, x, y, 0, 0, 1, 0);
projmat = matrix_build_projection_ortho(width_default, height_default, 1.0, 32000.0);
camera_set_view_mat(camera, viewmat);
camera_set_proj_mat(camera, projmat);
view_camera[0] = camera;

// Other
locked_x			= false;
locked_y			= false;
wait_for_lock_x		= false;
wait_for_lock_y		= false;

screen_shake_time_base	= 10;
focus_target_time_base	= 10;
focus_zoom_time_base	= 10;