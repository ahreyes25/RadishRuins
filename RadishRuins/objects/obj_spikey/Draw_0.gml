image_xscale = facing * scale;
image_yscale = scale;
mask_index	 = spr_spikey_mask;

switch (state) {
	default:
		sprite_index	= spr_spikey_walk;
		image_speed		= 0.4;
		break;
}
draw_self();
draw_circle(bbox_right - 1, bbox_bottom, 5, false);