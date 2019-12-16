if (on_ground) {
	
	image_index		= 0;
	previous_state	= state;
	state			= radish_state_idle;
	
	return true;
}