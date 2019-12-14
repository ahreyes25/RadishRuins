if (!exists(focus_target_current))
	return;

#region Store Starting Target
if (focus_target_current != undefined && focus_target_default == undefined)
	focus_target_default = focus_target_current;
#endregion

#region Set Target Coordinates
if (!leading_current_x)
	x_to = focus_target_current.x;
else
	x_to = focus_target_current.x + (sign(focus_target_current.image_xscale) * lead_distance_current_x);
y_to = focus_target_current.y;
#endregion
		
#region Screen Shake
if (shake_screen) {
	x += random_range(-shake_size, shake_size); 
	y += random_range(-shake_size, shake_size);
}
#endregion

#region Screen Flash
if (flash_alpha > 0)
	flash_alpha -= flash_decay;
else {
	flash_alpha = 0;
	flash_color = c_white;
}
#endregion
		
#region Follow Multiple Targets
if (focus_target_current == focus_target_default) {
	var _n_targets	= instance_number(focus_target_current);
	var _x_total	= 0;
	var _y_total	= 0;

	if (_n_targets > 1) {

		for (var i = 0; i < _n_targets; i++) {
			var p = instance_find(focus_target_current, i);
			_x_total += p.x;
			_y_total += p.y;
		}

		x_to = _x_total / _n_targets;
		y_to = _y_total / _n_targets;
	}
}
#endregion

#region Restrict Camera Movement to Edges of Stage
x_to = clamp(x_to, width_current  / 2, room_width  - width_current  / 2);
y_to = clamp(y_to, height_current / 2, room_height - height_current / 2);
#endregion
		
#region Move Camera Object
if (!focus_target_hard) {
	if (!locked_x)
		x += (x_to - x) * move_speed_scale;
	if (!locked_y)
		y += (y_to - y) * move_speed_scale;
}
else {
	x = focus_target_current.x;
	y = focus_target_current.y;
}
#endregion	

#region Lock Camera
if (floor(x) == floor(xprevious) && wait_for_lock_x && !locked_x) {
	locked_x = true;
	wait_for_lock_x = false;
}
if (floor(y) == floor(yprevious) && wait_for_lock_y && !locked_y) {
	locked_y = true;	
	wait_for_lock_y = false;
}
#endregion

#region Camera Zoom
if (zoom_target != undefined) {
	// Gradual Zoom
	if (zoom_speed != -1) {
		if (zoom_current > zoom_target)
			zoom_current -= zoom_speed;
		else if (zoom_current < zoom_target)
			zoom_current += zoom_speed;
	}
	// Instant Snap
	else {
		if (zoom_current > zoom_target)
			zoom_current = zoom_target;
		else if (zoom_current < zoom_target)
			zoom_current = zoom_target;
	}
}	
#endregion

#region Update Camera View Matrix
viewmat = matrix_build_lookat(x, y, -room_height - 100, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, viewmat);

if (instance_number(focus_target_current) > 1) {
	var _furthest_target = instance_furthest(x, y, focus_target_current);
	var _target_zoom = clamp((point_distance(x, y, _furthest_target.x, _furthest_target.y) / width_current) * 4, 1, 10000);
	projmat = matrix_build_projection_ortho(width_current * zoom_current * _target_zoom, height_current * zoom_current * _target_zoom, 1.0, 32000.0);
	camera_set_proj_mat(camera, projmat);
	camera_apply(camera);
}
else {
	projmat = matrix_build_projection_ortho(width_current * zoom_current, height_current * zoom_current, 1.0, 32000.0);
	camera_set_proj_mat(camera, projmat);
	camera_apply(camera);
}

view_camera[0] = camera;
#endregion