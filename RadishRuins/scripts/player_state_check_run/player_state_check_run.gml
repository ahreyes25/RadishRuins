if (on_ground && !in_water && (key_left || key_right)) {
	
	image_index		= 0
	previous_state	= state;
	state			= player_state_run; 
	
	return true;
}