// Pulled?
if (pulled)
	sprite_index = spr_turnip;
else
	sprite_index = spr_leaf_top;
	
// Animate?
if (exists(owner) && owner.vx != 0)
	image_speed = 0.5;
else
	image_index = 0;
	
draw_self();