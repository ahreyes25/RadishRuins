// spikey_state_walk_wall_right

friction_set_ground();
acceleration_set_ground();
friction_apply_vertical();
	
if (facing == DIR.RIGHT)
	move_up();
if (facing == DIR.LEFT)
	move_down();
	
spikey_state_check_walk_flat();
spikey_state_check_walk_ceiling();