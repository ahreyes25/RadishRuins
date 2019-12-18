event_inherited();

if (!holding) {
	turnip_bounce();

	if (alarm[0] == -1)
		alarm[0] = bounce_cooldown;
}