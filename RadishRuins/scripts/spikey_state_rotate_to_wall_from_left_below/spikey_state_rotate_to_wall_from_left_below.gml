/// spikey_state_rotate_to_wall_from_left_below
vx = 0;
vy = 0;
	
// Rotate 
if (image_angle > target_angle) {
	image_angle--;
	y -= 0.1;
	x += 0.1;
}
		
// Finished Rotating
else {		
	// Adjust Y Position
	var _solid_below = collision_point(x, bbox_bottom, obj_solid, false, false);
	while (defined(_solid_below)) {
		y--;
		_solid_below = collision_point(x, bbox_bottom, obj_solid, false, false);
	}
	
	// Adjust X Position
	var _solid_left = collision_point(bbox_left - 1, y, obj_solid, false, false);
	while (!defined(_solid_left)) {
		x--;
		_solid_left = collision_point(bbox_left - 1, y, obj_solid, false, false);
	}
		
	image_angle		= 270;
	target_angle	= undefined;
	state			= spikey_state_walk_wall_left;
}