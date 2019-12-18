var _player = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, false);

if (defined(_player)) {
	if (HEARTS == MAX_HEARTS)
		MAX_HEARTS++;
	HEARTS++; 
		
	instance_destroy();	
	sfx_play_array(sfx_head);
}