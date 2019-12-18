if (touching_ladder && key_up) {
	
	image_index		= 0;
	previous_state	= state;
	state			= player_state_ladder;
	
	if (defined(turnip_holding))	
		turnip_drop(turnip_holding);
	
	return true;
}