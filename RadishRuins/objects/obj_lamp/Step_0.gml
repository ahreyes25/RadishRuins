x = phy_position_x;
y = phy_position_y;

var _phy_body = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_physics_body, false, false);
if (defined(_phy_body)) {
	if (_phy_body.x > x)
		physics_apply_impulse(x + sprite_get_true_width() / 2, y, -100, 0);
	else
		physics_apply_impulse(x - sprite_get_true_width() / 2, y, 100, 0);
	hit = true;
}
else
	hit = false;