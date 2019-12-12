if (!key_right && !key_left && on_ground && !in_water && !key_down) {
	
	image_index		= 0;
	previous_state	= state;
	state			= player_state_idle;
	
	return true;
}