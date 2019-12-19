input_object_create();
player_pos_set_last_touching();

event_inherited();

// General 
//pid		= PLAYER.P1;
takes_input	= true;
has_control	= true;
can_be_hurt	= true;
hurt_time	= 60;
entity		= ENTITY.PLAYER;
entity_update_movement();

// Alarms
alarm_hurt	= 0;

// States
state			= player_state_idle;
previous_state	= undefined;

// Sounds
sfx_walk_grass_sound	= [sfx_footsteps_grass_1, sfx_footsteps_grass_2, sfx_footsteps_grass_3, sfx_footsteps_grass_4];
sfx_walk_grass_inst		= undefined;
sfx_walk_rock_sound		= undefined;
sfx_walk_rock_inst		= undefined;
sfx_walk_wood_sound		= [sfx_footsteps_wood_1, sfx_footsteps_wood_2];
sfx_walk_wood_inst		= undefined;
sfx_walk_sound			= sfx_walk_grass_sound;
sfx_walk_sound_inst		= undefined;

// Other
key_image_index	= 0;
key_image_speed	= 0.1;
turnip_holding	= undefined;