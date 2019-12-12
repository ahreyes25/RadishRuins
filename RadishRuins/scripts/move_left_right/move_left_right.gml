// Left 
if (key_left && !key_right) {
	if (vx > 0)
	    vx = approach(vx, 0, fric_temp);   
	vx = approach(vx, -vx_max, accel_temp);
	facing = -1;
}

// Right 
if (key_right && !key_left) {
	if (vx < 0)
	    vx = approach(vx, 0, fric_temp);   
	vx = approach(vx, vx_max, accel_temp);			
	facing = 1;
}