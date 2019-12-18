/// player_state_fall

friction_set_air();
acceleration_set_air();
gravity_set_normal()
gravity_apply();
move_left_right();
friction_apply();

// Play Sound
if (on_ground)
	sfx_walk_sound_inst = sfx_play_array(sfx_emitter, sfx_walk_sound);	

player_state_check_idle();
player_state_check_run();
player_state_check_swim();
player_state_check_ladder();

player_check_turnip_pull();
player_check_turnip_throw();