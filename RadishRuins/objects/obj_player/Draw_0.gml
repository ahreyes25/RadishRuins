image_xscale = scale * facing;
image_yscale = scale;
mask_index	 = spr_player_mask;

switch (state) {
	case player_state_idle:
		sprite_index	= spr_player_idle;
		image_speed		= 0.5;
		break;
		
	case player_state_run:
		sprite_index	= spr_player_run;
		image_speed		= 0.6;
		break;
		
	case player_state_jump:
		sprite_index	= spr_player_jump;
		image_speed		= 0;
		break;
		
	case player_state_fall:
		sprite_index	= spr_player_fall;
		image_speed		= 0;
		break;
		
	case player_state_ladder:
		sprite_index	= spr_player_climb;
		image_speed		= 1.0 * (vy / vy_max_ladder);
		break;
}

// Flash When Invincible
if (!can_be_hurt && CURRENT_TIME_FRAME mod 20 >= 0 && CURRENT_TIME_FRAME mod 20 <= 10) {
	// Do Nothing
}
else 
	draw_self();