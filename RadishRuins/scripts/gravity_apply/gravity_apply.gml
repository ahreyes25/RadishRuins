if (!on_ground) {
	if (grav_temp == grav_water)
		vy = approach(vy, vy_max_water, grav_temp);
	else
		vy = approach(vy, vy_max, grav_temp);
}