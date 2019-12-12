/// @param x

var _x = argument0;

if (!is_real(_x)) 
	return 1;

if (_x > x)
	facing = DIR.RIGHT;
else
	facing = DIR.LEFT;