/// spikey_state_rotate_to_flat_from_right_below

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
	image_angle		= 0;
	target_angle	= undefined;
	state			= spikey_state_walk_flat;
}