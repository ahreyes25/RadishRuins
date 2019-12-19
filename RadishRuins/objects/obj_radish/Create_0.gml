event_inherited();

// General 
takes_input		= false;		// player vs npc
has_control		= false;		// used for cutscenes
entity			= ENTITY.PLAYER;
entity_update_movement();

// States
state			= radish_state_idle;
previous_state	= undefined;

// Sounds
sfx_emitter				= audio_emitter_create();
sfx_walk_grass_sound	= [sfx_footsteps_grass_1, sfx_footsteps_grass_2, sfx_footsteps_grass_3, sfx_footsteps_grass_4];
sfx_walk_grass_inst		= undefined;
sfx_walk_rock_sound		= undefined;
sfx_walk_rock_inst		= undefined;
sfx_walk_wood_sound		= [sfx_footsteps_wood_1, sfx_footsteps_wood_2];
sfx_walk_wood_inst		= undefined;
sfx_walk_sound			= sfx_walk_grass_sound;
sfx_walk_sound_inst		= undefined;

phy_body = instance_create_layer(x, y, "Instances", obj_physics_body);
phy_body.owner = id;