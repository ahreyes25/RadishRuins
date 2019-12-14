debugging_res = keyboard_check(vk_tab) && keyboard_check(ord("C"));
debugging_hud = keyboard_check(vk_tab) && keyboard_check(ord("H"));

#region Debug Res Menu
// Navigate
if (debugging_res) {
	if (keyboard_check_pressed(vk_up)) {
		if (menu_index > 0)
			menu_index--;
		else
			menu_index = menu_length - 1;
	}
	if (keyboard_check_pressed(vk_down)) {
		if (menu_index < menu_length - 1)
			menu_index++;
		else
			menu_index = 0;
	}
}

// Select
if (keyboard_check_pressed(vk_enter)) {
	var _res	= resolutions[menu_index];
	var _width	= _res[0] / 2;
	var _height	= _res[1] / 2;
	window_update_resolution(_width, _height);
}
#endregion

#region Debug HUD
if (debugging_hud) {
	if (keyboard_check(vk_up))
		hud_scale += 0.01;
	if (keyboard_check(vk_down))
		hud_scale -= 0.01;
	if (keyboard_check(vk_left))
		hud_alpha -= 0.01;
	if (keyboard_check(vk_right))
		hud_alpha += 0.01;
	hud_alpha = clamp(hud_alpha, 0, 1);
}
#endregion
