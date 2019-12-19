event_inherited();

// Update Sounds
if (on_wood)
	sfx_walk_sound = sfx_walk_wood_sound;
else if (on_rock)
	sfx_walk_sound = sfx_walk_rock_sound;
else 
	sfx_walk_sound = sfx_walk_grass_sound;
	
// Store Ground Position
if (on_ground)
	GROUND_POS = [x, y];	