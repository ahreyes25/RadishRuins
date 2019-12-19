// Left 
if (vx > 0)
	vx = approach(vx, 0, fric_temp);   
vx = approach(vx, -vx_max, accel_temp);