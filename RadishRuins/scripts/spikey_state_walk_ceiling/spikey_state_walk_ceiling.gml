// spikey_state_walk_ceiling

friction_set_ground();
acceleration_set_ground();
friction_apply();
	
if (facing == DIR.RIGHT)
	move_left();
if (facing == DIR.LEFT)
	move_right();