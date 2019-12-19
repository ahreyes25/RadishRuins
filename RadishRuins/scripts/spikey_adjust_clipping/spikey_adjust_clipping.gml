#region Flat
if (image_angle == 0 || image_angle == 360) {
	// Snap Downwards to Just Above Floor
	var _solid_below = defined(collision_rectangle(bbox_left, bbox_bottom + 1, bbox_right, bbox_bottom + 1, obj_solid, false, false));
	while (!_solid_below) {
		y++;	
		_solid_below = defined(collision_rectangle(bbox_left, bbox_bottom + 1, bbox_right, bbox_bottom + 1, obj_solid, false, false));
	}
	
	// Snap Upwards to Just Above Floor
	var _solid_below = defined(collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom, obj_solid, false, false));
	while (_solid_below) {
		y--;	
		_solid_below = defined(collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom, obj_solid, false, false));
	}
	
	// Snap Out of Left Clipped Wall
	var _solid_left = defined(collision_point(bbox_left, bbox_bottom, obj_solid, false, false));
	while (_solid_left) {
		x++;	
		_solid_left = defined(collision_point(bbox_left, bbox_bottom, obj_solid, false, false));
	}
	
	// Snap Out of Right Clipped Wall
	var _solid_right = defined(collision_point(bbox_right, bbox_bottom, obj_solid, false, false));
	while (_solid_right) {
		x--;	
		_solid_right = defined(collision_point(bbox_right, bbox_bottom, obj_solid, false, false));
	}
}
#endregion

#region Ceiling
else if (image_angle == 180 || image_angle == -180) {
	// Snap Downwards to Just Below Ceiling
	var _solid_above = defined(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, false, false));
	while (_solid_above) {
		y++;	
		_solid_above = defined(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, false, false));
	}
	
	// Snap Upwards to Just Below Ceiling
	var _solid_above = defined(collision_rectangle(bbox_left, bbox_top - 1, bbox_right, bbox_top - 1, obj_solid, false, false));
	while (!_solid_above) {
		y--;	
		_solid_above = defined(collision_rectangle(bbox_left, bbox_top - 1, bbox_right, bbox_top - 1, obj_solid, false, false));
	}
	
	// Snap Out of Left Clipped Wall
	var _solid_left = defined(collision_point(bbox_left, bbox_top, obj_solid, false, false));
	while (_solid_left) {
		x++;	
		_solid_left = defined(collision_point(bbox_left, bbox_top, obj_solid, false, false));
	}
	
	// Snap Out of Right Clipped Wall
	var _solid_right = defined(collision_point(bbox_right, bbox_top, obj_solid, false, false));
	while (_solid_right) {
		x--;	
		_solid_right = defined(collision_point(bbox_right, bbox_top, obj_solid, false, false));
	}
}
#endregion

#region Wall Right
else if (image_angle == 90 || image_angle == -270) {
	// Snap Out of Right Clipped Wall
	var _solid_right = defined(collision_rectangle(bbox_right, bbox_top, bbox_right, bbox_bottom, obj_solid, false, false));
	while (_solid_right) {
		x--;	
		_solid_right = defined(collision_rectangle(bbox_right, bbox_top, bbox_right, bbox_bottom, obj_solid, false, false));
	}
	
	// Snap Into Just Right of Wall
	var _solid_right = defined(collision_rectangle(bbox_right + 1, bbox_top, bbox_right + 1, bbox_bottom, obj_solid, false, false));
	while (!_solid_right) {
		x++;	
		_solid_right = defined(collision_rectangle(bbox_right + 1, bbox_top, bbox_right + 1, bbox_bottom, obj_solid, false, false));
	}
	
	// Snap Downwards to Clip Out of Ceiling
	var _solid_above = defined(collision_point(bbox_right, bbox_top, obj_solid, false, false));
	while (_solid_above) {
		y++;	
		var _solid_above = defined(collision_point(bbox_right, bbox_top, obj_solid, false, false));
	}
	
	// Snap Upwards to Clip Out of Floor
	var _solid_below = defined(collision_point(bbox_right, bbox_bottom, obj_solid, false, false));
	while (_solid_below) {
		y--;	
		var _solid_below = defined(collision_point(bbox_right, bbox_bottom, obj_solid, false, false));
	}
}
#endregion

#region Wall Left
else if (image_angle == 270 || image_angle == -90) {
	// Snap Out of Left Clipped Wall
	var _solid_left = defined(collision_rectangle(bbox_left, bbox_top, bbox_left, bbox_bottom, obj_solid, false, false));
	while (_solid_left) {
		x++;	
		_solid_left = defined(collision_rectangle(bbox_left, bbox_top, bbox_left, bbox_bottom, obj_solid, false, false));
	}
	
	// Snap Into Just Right of Wall
	var _solid_left = defined(collision_rectangle(bbox_left - 1, bbox_top, bbox_left - 1, bbox_bottom, obj_solid, false, false));
	while (!_solid_left) {
		x--;	
		_solid_left = defined(collision_rectangle(bbox_left - 1, bbox_top, bbox_left - 1, bbox_bottom, obj_solid, false, false));
	}
	
	// Snap Downwards to Clip Out of Ceiling
	var _solid_above = defined(collision_point(bbox_left, bbox_top, obj_solid, false, false));
	while (_solid_above) {
		y++;	
		var _solid_above = defined(collision_point(bbox_left, bbox_top, obj_solid, false, false));
	}
	
	// Snap Upwards to Clip Out of Floor
	var _solid_below = defined(collision_point(bbox_left, bbox_bottom, obj_solid, false, false));
	while (_solid_below) {
		y--;	
		var _solid_below = defined(collision_point(bbox_left, bbox_bottom, obj_solid, false, false));
	}
}
#endregion