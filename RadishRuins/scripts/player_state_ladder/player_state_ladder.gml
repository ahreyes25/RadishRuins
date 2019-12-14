/// player_state_ladder

#region Climb Ladder
vx = 0;
vy = 0;

if (in_water)
	var _ladder_speed = 1;
else
	var _ladder_speed = 2;

if (touching_ladder && exists(touching_ladder)) {
	vx = 0;
	x = touching_ladder.x + 16;

	// Climb Up
	if (key_up)
		vy = approach(vy, -vy_max_ladder, _ladder_speed);
	
	// Climb Down
	if (key_down)
		vy = approach(vy, vy_max_ladder, _ladder_speed);
	
	if ((key_left || key_right) && !key_down && !key_up) {
		previous_state	= state;
		state			= player_state_idle;
	}
	
	// Sit Still
	if (!key_down && !key_up)
		vy = 0;
	
	// Jump Off Ladder
	if (key_jump_pressed) {
		previous_state	= state;
		state			= player_state_jump;	
	}

	// Break Off Away From Ladder
	if ((!touching_ladder || on_ground) && state == player_state_ladder) {
		previous_state	= state;
		state			= player_state_idle;
	}
}
else if (state == player_state_ladder) {
	previous_state	= state;
	state			= player_state_idle;
}
#endregion

// Walk Sounds
if ((current_frame() == 0 || current_frame() == 2) && vy != 0) {
	if (!sfx_is_playing_array(sfx_walk_wood_inst))
		sfx_walk_wood_inst = sfx_play_array(sfx_emitter, sfx_walk_wood_sound);
}
else
	sfx_stop_array(sfx_walk_wood_inst);	