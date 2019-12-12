/// player_state_fall

friction_set_air();
acceleration_set_air();
gravity_set_normal()
gravity_apply();
move_left_right();
friction_apply();

player_state_check_idle();
player_state_check_run();
player_state_check_swim();
player_state_check_ladder();