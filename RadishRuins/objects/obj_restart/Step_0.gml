// Restart On Player Collision
if (place_meeting(x, y, obj_player))
	player_death();
	
// Destroy Stray Turnips
var _turnip = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_turnip, false, false);
if (defined(_turnip))
	turnip_destroy(_turnip);