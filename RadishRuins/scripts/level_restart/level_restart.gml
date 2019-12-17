GROUND_POS	= [];
HEARTS		= MAX_HEARTS;

// Set Player Starting Position
var _pos		= MAP_DATA[? room_get_name(room)];
var _x			= _pos[0];
var _y			= _pos[1];
obj_player.x	= _x;
obj_player.y	= _y;