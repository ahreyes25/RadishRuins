if (array_length_1d(GROUND_POS) > 0) {

	if (variable_instance_exists(obj_player, "scale"))
		var _scale = obj_player.scale;
	else
		var _scale = 1;

	var _x		= GROUND_POS[0];
	var _y		= GROUND_POS[1];
	var _width	= (sprite_get_width(spr_player_mask) * abs(_scale)) / 2;
	
	var _solid_left		= defined(collision_point(_x - _width, _y + 1, obj_solid, false, false));
	var _solid_right	= defined(collision_point(_x + _width, _y + 1, obj_solid, false, false));
	var _pass_left		= defined(collision_point(_x - _width, _y + 1, obj_solid_pass, false, false));
	var _pass_right		= defined(collision_point(_x + _width, _y + 1, obj_solid_pass, false, false));
	
	// Push to Right Slightly
	if (!_solid_left && !_pass_left)
		var _xx = _x + (_width * 2);
	// Push to Left Slightly
	else if (!_solid_right && !_pass_right)
		var _xx = _x - (_width * 2);
	// Keep in Place
	else
		var _xx = _x;
	
	obj_player.x = _xx;
	obj_player.y = GROUND_POS[1];
}