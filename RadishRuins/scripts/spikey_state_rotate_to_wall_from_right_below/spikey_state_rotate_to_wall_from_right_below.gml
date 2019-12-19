/// spikey_state_rotate_to_wall_right_above
vx = 0;
vy = 0;
	
// Rotate 
if (image_angle < target_angle) {
	image_angle++;
	y -= 0.1;
	x -= 0.1;
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
	var _solid_right = collision_point(bbox_right + 1, (bbox_top + bbox_bottom) / 2, obj_solid, false, false);
	while (!defined(_solid_right)) {
		x++;	
		_solid_right = collision_point(bbox_right + 1, (bbox_top + bbox_bottom) / 2, obj_solid, false, false);
	}
		
	image_angle		= 90;
	target_angle	= undefined;
	state			= spikey_state_walk_wall_right;
}