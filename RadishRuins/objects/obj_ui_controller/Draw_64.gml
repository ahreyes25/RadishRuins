// Debug Resolutions
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