/// spikey_state_rotate

vx = 0;
vy = 0;
	
// Rotate 
if (image_angle < target_angle)
	image_angle++;
else if (image_angle > target_angle)
	image_angle--;
		
// Finished Rotating
else {		
	image_angle		= target_angle;
	state			= next_state;
	target_angle	= undefined;
	next_state		= undefined;
	spikey_adjust_clipping();
}