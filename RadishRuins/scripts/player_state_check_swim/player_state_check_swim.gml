if (in_water) {
	
	image_index		= 0;
	previous_state	= state;
	state			= player_state_swim;
	
	return true;
}