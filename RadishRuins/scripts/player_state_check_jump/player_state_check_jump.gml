// Drop Through Platform
if (on_ground && key_down && key_jump && place_meeting(x, y + 1, obj_solid_pass)) {
	
	y++;
	
	image_index		= 0;
	previous_state	= state;
	state			= player_state_fall;
	
	return true;
}

// Normal Jump
else if (on_ground && key_jump_pressed) {
	
	image_index		= 0;
	previous_state	= state;
	state			= player_state_jump;
	
	jump_target_y	= y - jump_height;
	vy				= -jump_thrust;
	
	return true;
}