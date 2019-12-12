/// @description	Compute the Manhattan Distance Between Two Points
/// @param u1
/// @param v1
/// @param u2
/// @param v2

var _u1 = argument0;
var _v1 = argument1;
var _u2 = argument2;
var _v2 = argument3;

var _du = abs(_u1 - _u2);
var _dv = abs(_v1 - _v2);

return (_du + _dv);