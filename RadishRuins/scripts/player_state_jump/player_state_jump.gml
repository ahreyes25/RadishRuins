/// player_state_jump

friction_set_ground();
acceleration_set_ground();
gravity_set_normal()
gravity_apply();
move_left_right();
friction_apply();

// Jump Upwards
if (key_jump_pressed)
	vy = -vy_max;

// Variable Jumping
if (key_jump_released) {
	can_jump = false;
	vy *= 0.25;
}

player_state_check_idle();
player_state_check_run();
player_state_check_fall();
player_state_check_swim();
player_state_check_ladder();