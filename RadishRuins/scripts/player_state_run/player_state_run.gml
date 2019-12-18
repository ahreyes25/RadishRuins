/// player_state_run

friction_set_ground();
acceleration_set_ground();
gravity_set_normal()
gravity_apply();
move_left_right();
friction_apply();

// Walk Sounds
if (current_frame() == 1 || current_frame() == 3) {
	if (!sfx_is_playing_array(sfx_walk_sound_inst))
		sfx_walk_sound_inst = sfx_play_array(sfx_emitter, sfx_walk_sound);
}
else
	sfx_stop_array(sfx_walk_sound_inst);	

player_state_check_idle();
player_state_check_fall();
player_state_check_swim();
player_state_check_ladder();
player_state_check_jump();

player_check_turnip_pull();
player_check_turnip_throw();