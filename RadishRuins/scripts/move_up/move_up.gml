// Up 
if (vy > 0)
	vy = approach(vy, 0, fric_temp);   
vy = approach(vy, -vx_max, accel_temp);