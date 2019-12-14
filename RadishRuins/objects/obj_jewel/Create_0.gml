shine			= false;
shine_time_min	= 60;
shine_time_max	= 300;
alarm[0]		= irandom_range(shine_time_min, shine_time_max);
image_speed		= 0;

// Create Lights
if (light && !place_meeting(x, y, obj_hidden))
	light_double_create(x, y, 0.5, 0.6);