/// spikey_state_rotate_to_flat_from_right_above

vx = 0;
vy = 0;
	
// Rotate 
if (image_angle > target_angle) {
	image_angle--;
	y -= 0.05;
}
		
// Finished Rotating
else {		
	image_angle		= 0;
	target_angle	= undefined;
	state			= spikey_state_walk_flat;
	
	// Adjust Y Position
	var _solid_below = collision_point(x, bbox_bottom, obj_solid, false, false);
	while (defined(_solid_below)) {
		y--;
		_solid_below = collision_point(x, bbox_bottom, obj_solid, false, false);
	}
}