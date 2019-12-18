if (CAN_PICK && key_down_pressed && !defined(turnip_holding)) {
	var _turnip = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_turnip, false, false);
	
	if (defined(_turnip)) {
		_turnip.pulled	= true;
		_turnip.holding	= true;
		_turnip.owner	= id;
		turnip_holding	= _turnip;
		
		sfx_play_array(_turnip.sfx_emitter, sfx_turnip_pull);
	}
}