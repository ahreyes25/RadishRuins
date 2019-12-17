debugging_res = keyboard_check(vk_tab) && keyboard_check(ord("C"));

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