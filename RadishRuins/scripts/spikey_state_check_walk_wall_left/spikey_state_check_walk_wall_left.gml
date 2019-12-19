// spikey_state_check_walk_wall_left

// Wall In Front Of Spikey Moving Left
if (facing == DIR.LEFT && vx != 0) {
	var _solid_left = defined(collision_rectangle(bbox_left, bbox_bottom, bbox_left - 1, bbox_top, obj_solid, false, false));

	if (on_ground && _solid_left) {
		state			= spikey_state_rotate_to_wall_from_left_below;
		target_angle	= -90;
	}
}

if (facing == DIR.RIGHT && vx != 0) {
	// Wall Below Spikey Moving Right
	var _solid_below = defined(collision_point((bbox_left + x) / 2, bbox_bottom + 1, obj_solid, false, false));
	var _wall_below  = defined(collision_point((bbox_left + x) / 2 - 1, bbox_bottom + 1, obj_solid, false, false));
	if (!_solid_below && _wall_below) {
		state			= spikey_state_rotate_to_wall_from_left_above;
		target_angle	= -90;
	}
}