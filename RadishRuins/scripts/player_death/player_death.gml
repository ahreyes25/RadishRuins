HEARTS--;
sfx_play_array(sfx_player_death);

// Restart Level
if (HEARTS <= 0)
	level_restart();
else
	player_pos_set_last_touching();	