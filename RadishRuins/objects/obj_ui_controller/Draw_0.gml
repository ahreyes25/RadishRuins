if (!surface_exists(light_surface))
	light_surface = surface_create(room_width, room_height);

surface_set_target(light_surface);

draw_clear_alpha(c_black, 0);
draw_set_color(make_color_rgb(21, 15, 10));
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_color(c_white);

gpu_set_blendmode(bm_subtract);
with (obj_light_parent)
	draw_self();
gpu_set_blendmode(bm_normal);

surface_reset_target();
draw_surface(light_surface, 0, 0);