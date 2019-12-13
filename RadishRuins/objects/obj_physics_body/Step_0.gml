if (!exists(owner)) {
	instance_destroy();
	return;
}

// Stick
if (!defined(dif_x))
	dif_x = owner.x - x;
if (!defined(dif_y))
	dif_y = owner.y - y;	
if (defined(dif_x) && defined(dif_y)) {
	x = owner.x - dif_x;
	y = owner.y - dif_y;
	phy_position_x = x;
	phy_position_y = y;
}