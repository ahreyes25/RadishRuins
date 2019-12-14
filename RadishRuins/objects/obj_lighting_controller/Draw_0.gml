if (!surface_exists(light_surface))
	light_surface = surface_create(room_width, room_height);

surface_set_target(light_surface);
draw_clear_alpha(c_black, 0.95);

with (obj_circle_light) {
	gpu_set_blendmode(bm_subtract);
	if (flicker)
		draw_sprite_ext(sprite_index, image_index, x, y, flicker_scale, flicker_scale, image_angle, c_white, alpha);
	else
		draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, image_angle, c_white, alpha);
	gpu_set_blendmode(bm_normal);
}

with (obj_pillar_light) {
	gpu_set_blendmode(bm_subtract);
	if (flicker) 
		draw_sprite_ext(sprite_index, image_index, x, y, flicker_scale, room_height / sprite_height, image_angle, c_white, alpha_);
	else
		draw_sprite_ext(sprite_index, image_index, x, y, scale, room_height / sprite_height, image_angle, c_white, alpha_);
	gpu_set_blendmode(bm_normal);
}

surface_reset_target();

var _camera = camera_get_current();
camera_apply(_camera.camera);

draw_surface(light_surface, 0, 0);