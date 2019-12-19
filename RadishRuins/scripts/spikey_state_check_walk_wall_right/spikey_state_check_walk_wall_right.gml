// spikey_state_check_walk_wall_right

// Wall In Front Of Spikey Moving Right
if (facing == DIR.RIGHT) {
	var _solid_right = defined(collision_rectangle(bbox_right, bbox_bottom, bbox_right + 1, bbox_top, obj_solid, false, false));

	if (on_ground && _solid_right) {
		state			= spikey_state_rotate_to_wall_from_right_below;
		target_angle	= 90;
	}
}

if (facing == DIR.LEFT) {
	// Wall Below Spikey Moving Left
	var _solid_below = defined(collision_point((bbox_right + x) / 2, bbox_bottom + 1, obj_solid, false, false));
	var _wall_below  = defined(collision_point((bbox_right + x) / 2 + 1, bbox_bottom + 1, obj_solid, false, false));
	if (!_solid_below && _wall_below) {
		state			= spikey_state_rotate_to_wall_from_right_above;
		target_angle	= 90;
	}
}