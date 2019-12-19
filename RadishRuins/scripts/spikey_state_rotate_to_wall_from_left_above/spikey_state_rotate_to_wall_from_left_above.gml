/// spikey_state_rotate_to_wall_from_left_above
vx = 0;
vy = 0;

// Rotate 
if (image_angle > target_angle) {
	image_angle--;
	y += 0.1;
	x += 0.1;
}
		
// Finished Rotating
else {		
	// Adjust X Position
	var _solid_left = collision_point(bbox_left, bbox_bottom, obj_solid, false, false);
	while (defined(_solid_left)) {
		x++;	
		_solid_left = collision_point(bbox_left, bbox_bottom, obj_solid, false, false);
	}
		
	image_angle		= 270;
	target_angle	= undefined;
	state			= spikey_state_walk_wall_left;
}