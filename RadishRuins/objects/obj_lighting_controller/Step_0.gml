if (transition_alpha && defined(target_alpha) && defined(alpha_speed)) {
	if (global.night_alpha > target_alpha)
		global.night_alpha -= alpha_speed;
	else if (global.night_alpha < target_alpha)
		global.night_alpha += alpha_speed;
	else {
		global.night_alpha	= target_alpha;
		transition_alpha	= false;
		target_alpha		= undefined;
		alpha_speed			= undefined;
	}
}