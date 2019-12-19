/// @param reset_position?

var _reset = (argument_count == 1) ? argument[0] : false;

HEARTS--;
sfx_play_array(sfx_player_death);

// Restart Level
if (HEARTS <= 0)
	level_restart();
	
// Player Fall Off Ledge
else if (!_reset) {
	player_pos_set_last_touching();	
	obj_player.can_be_hurt	= false;
	obj_player.alarm[0]		= 60 * 3;
}
else { 
	// Set Player Starting Position
	var _pos		= MAP_DATA[? room_get_name(room)];
	var _x			= _pos[0];
	var _y			= _pos[1];
	obj_player.x	= _x;
	obj_player.y	= _y;
	obj_player.can_be_hurt	= true;
	obj_player.alarm[0]		= -1;
}