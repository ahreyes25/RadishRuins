if (!on_ground && !in_water && vy >= 0 /*&& !wall_left && !wall_right*/) {
	
	image_index		= 0;
	previous_state	= state;
	state			= player_state_fall;
	
	return true;
}