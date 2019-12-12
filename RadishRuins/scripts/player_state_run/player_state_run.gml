/// player_state_run

friction_set_ground();
acceleration_set_ground();
gravity_set_normal()
gravity_apply();
move_left_right();
friction_apply();

player_state_check_idle();
player_state_check_fall();
player_state_check_swim();
player_state_check_ladder();
player_state_check_jump();