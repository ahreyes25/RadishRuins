// spikey_state_walk_flat

friction_set_ground();
acceleration_set_ground();
friction_apply();
gravity_set_normal()
gravity_apply();
	
if (facing == DIR.RIGHT)
	move_right();
if (facing == DIR.LEFT)
	move_left();

spikey_state_check_walk_wall_left();
spikey_state_check_walk_wall_right();