if (key_action_pressed && defined(turnip_holding)) {
	turnip_holding.holding		= false;
	turnip_holding.phy_active	= true;
	
	// Throw Turnip
	with (turnip_holding) {
		
		// Influence Horizontal Direction
		if (owner.key_down || owner.key_up)
			var _x_impulse = 0;
		else
			var _x_impulse = 1 * owner.image_xscale;
			
		// Influence Vertical Direction
		if (owner.key_up)
			var _y_impulse = -1;
		else if (owner.key_down)
			var _y_impulse = 1;
		else
			var _y_impulse = -0.25;
		
		// Appy Physics
		physics_apply_impulse(x, y, _x_impulse, _y_impulse);
	}
	sfx_play_array(turnip_holding.sfx_emitter, sfx_turnip_throw);

	turnip_holding.owner	= undefined;
	turnip_holding			= undefined;
}