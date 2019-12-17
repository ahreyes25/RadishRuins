player_pos_set_last_touching();

event_inherited();

// General 
//pid			= PLAYER.P1;
takes_input		= true;
has_control		= true;
can_be_hurt		= true;
hurt_time		= 60;
entity			= ENTITY.PLAYER;
player_update_movement();

// Alarms
alarm_hurt		= 0;

// States
state			= player_state_idle;
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

// Physics
phy_body = instance_create_layer(x, y, "Instances", obj_physics_body);
phy_body.owner = id;