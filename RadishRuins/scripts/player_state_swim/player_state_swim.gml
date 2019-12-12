/// player_state_swim

friction_set_water();
acceleration_set_water();
gravity_set_water()
gravity_apply();
swim_left_right();
friction_apply();

#region Exit Swim State
if (!in_water) {
	if (on_ground)
		state = player_state_idle;
	else {
		if (vy > 0)
			state = player_state_fall;
		else
			state = player_state_jump;
	}
	previous_state = state;
	return;
}
#endregion

// Swim Up & Down
if (key_jump_pressed) { 
	if (!key_down)
		vy = -jump_height_water;
	else
		vy = jump_height_water;
}

player_state_check_ladder();