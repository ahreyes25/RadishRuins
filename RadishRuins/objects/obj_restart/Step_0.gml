if (place_meeting(x, y, obj_player)) {
	sfx_play_array(sfx_player_death);
	level_restart();
}