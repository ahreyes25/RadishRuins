event_inherited();

// Update Movement
player_update_movement();

// Sound Emitter
audio_emitter_position(sfx_emitter, x, y, 0);	

// Can Be Hurt
//can_be_hurt = (
//	state != state_human_roll &&
//	state != state_human_hurt
//);

//// Reset Can Jump
//if (state != state_human_jump)
//	can_jump = true;

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