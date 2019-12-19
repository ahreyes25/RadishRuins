// spikey_state_walk_wall_left

friction_set_ground();
acceleration_set_ground();
friction_apply_vertical();

if (facing == DIR.RIGHT)
	move_down();
if (facing == DIR.LEFT)
	move_up();
	
spikey_state_check_walk_flat();
spikey_state_check_walk_ceiling();