// Drop Through Platform
if (on_ground && key_down && key_jump && place_meeting(x, y + 1, obj_solid_pass)) {
	
	y++;
	image_index			= 0;
	previous_state		= state;
	state				= player_state_fall;
	sfx_walk_sound_inst = sfx_play_array(sfx_emitter, sfx_walk_sound);	
	return true;
}

// Normal Jump
else if (on_ground && key_jump_pressed) {
	
	image_index			= 0;
	previous_state		= state;
	state				= player_state_jump;
	vy					= -jump_thrust;
	sfx_walk_sound_inst = sfx_play_array(sfx_emitter, sfx_walk_sound);	
	return true;
}
return false;