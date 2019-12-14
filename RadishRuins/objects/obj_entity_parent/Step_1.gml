if (takes_input)
	input();	

on_ground			= on_ground_check();
in_water			= in_water_check();
touching_ladder		= touching_ladder_check();
on_rock				= on_rock_check();
on_wood				= on_wood_check();

image_xscale = facing;

// Wall Check
wall_left  = place_meeting(x - 1, y, obj_solid);
wall_right = place_meeting(x + 1, y, obj_solid);