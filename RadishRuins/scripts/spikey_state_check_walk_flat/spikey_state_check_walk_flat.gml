// On Left Wall
if (image_angle == 270 && vy != 0) {
	var _solid_left		= defined(collision_point(bbox_left - 1, bbox_bottom, obj_solid, obj_solid, false));
	var _solid_below	= defined(collision_point(x, bbox_bottom + 1, obj_solid, false, false));
	
	// Climbing Down Left Wall
	if (_solid_below && facing == DIR.RIGHT) {
		state = spikey_state_rotate_to_flat_from_left_above;
		target_angle = 360;	
	}
	// Climbing Up Left Wall
	else if (!_solid_left && facing == DIR.LEFT) {
		state = spikey_state_rotate_to_flat_from_left_below;
		target_angle = 360;	
	}
}

// On Right Wall
if (image_angle == 90 && vy != 0) {
	var _solid_right	= defined(collision_point(bbox_right + 1, bbox_bottom, obj_solid, obj_solid, false));
	var _solid_below	= defined(collision_point(x, bbox_bottom + 1, obj_solid, false, false));
	
	// Climbing Down Right Wall
	if (_solid_below && facing == DIR.LEFT) {
		state = spikey_state_rotate_to_flat_from_right_above;
		target_angle = 0;	
	}
	// Climbing Up Left Wall
	else if (!_solid_right && facing == DIR.RIGHT) {
		state = spikey_state_rotate_to_flat_from_right_below;
		target_angle = 0;	
	}
}