#region Debug Resolution
if (debugging_res) {
	draw_set_alpha(0.8);
	draw_set_color(c_black);
	draw_rectangle(0, 0, global.screen_width, global.screen_height, false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);

	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	var _line_space = string_height("A") * 1.1;
	var _x	 = global.screen_width / 2;
	var _y	 = (global.screen_height / 2) - ((_line_space * menu_length) / 2);
	
	for (var i = 0; i < menu_length; i++) {
		var _option = resolutions[i];
		if (i == menu_index)
			draw_set_color(c_red);
		if (is_array(_option))
			draw_text(_x, _y + (_line_space * i), string(_option[0]) + "x" + string(_option[1]));
		else
			draw_text(_x, _y + (_line_space * i), _option);
		draw_set_color(c_white);
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
#endregion

#region Debug HUD
if (debugging_hud) {
	draw_set_alpha(0.8);
	draw_set_color(c_black);
	draw_rectangle(0, 0, global.screen_width, global.screen_height, false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);

	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(window_get_width() / 2, window_get_height() / 4, "Debugging HUD");
	draw_text(window_get_width() / 2, window_get_height() / 4 + 15, "Left and Right Arrow Keys to Adjust Alpha");
	draw_text(window_get_width() / 2, window_get_height() / 4 + 30, "HUD Alpha: " + string(hud_alpha));
	draw_text(window_get_width() / 2, window_get_height() / 4 + 45, "Up and Down Arrow Keys to Adjust Scale");
	draw_text(window_get_width() / 2, window_get_height() / 4 + 60, "HUD Scale: " + string(hud_scale));
}
#endregion

#region Draw Quads
if (!surface_exists(top_left))
	top_left = surface_create(quad_width, quad_height);
if (!surface_exists(top_right))
	top_right = surface_create(quad_width, quad_height);

// Draw Quads
var _margin_x = 0;
var _margin_y = 0;

// Top Left
var _x = _margin_x;
var _y = _margin_y;
draw_surface_ext(top_left, _x, _y, hud_scale, hud_scale, 0, c_white, hud_alpha);

// Top Right
var _x = surface_get_width(application_surface) - (surface_get_width(top_right) * hud_scale) - _margin_x;
var _y = _margin_y;
draw_surface_ext(top_right, _x, _y, hud_scale, hud_scale, 0, c_white, hud_alpha);
#endregion