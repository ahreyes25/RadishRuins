var _player = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, false);

if (defined(_player) && KEYS > 0 && !open) {
	open = true;
	KEYS--;
	sfx_play_array(sfx_emitter, sfx_chest_open);
	//sfx_play_array(sfx_emitter, sfx_chest_jingle);
}
else if (defined(_player) && !sound && !open) {
	sfx_play_array(sfx_emitter, sfx_chest_no_key);
	sound = true;	
}
else if (!defined(_player))
	sound = false;