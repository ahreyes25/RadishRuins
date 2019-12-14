if (place_meeting(x, y, obj_player)) {
	sfx_play_array(sfx_jewel_collect);
	instance_destroy();
}