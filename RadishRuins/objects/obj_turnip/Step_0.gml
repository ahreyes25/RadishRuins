if (holding && exists(owner)) {
	y				= owner.bbox_top;	
	x				= owner.x + (20 * image_xscale);
	depth			= owner.depth - 1;
	image_xscale	= sign(owner.image_xscale);
	life			= life_max;
	
	// Physics Values
	phy_position_x			= x;
	phy_position_y			= y;
	phy_rotation			= 0;
	phy_speed_x				= 0;
	phy_speed_y				= 0;
	phy_angular_velocity	= 0;
	phy_linear_velocity_x	= 0;
	phy_linear_velocity_y	= 0;
	phy_active				= false;
}