event_inherited();

// General 
//pid			= PLAYER.P1;	// used for multiplayer -- set in Variable Definitions
takes_input		= true;			// player vs npc
has_control		= true;			// used for cutscenes
can_be_hurt		= true;
hurt_time		= 60;
player_update_movement();

// Alarms
alarm_hurt		= 0;

// Physics Vars
physics_body		= instance_create_layer(x, y, "Instances", obj_physics_body);
physics_body.owner	= id;

// States
state			= undefined;
previous_state	= undefined;

// Sounds
sfx_emitter			= audio_emitter_create();
sfx_walk_1_sound	= sfx_footstep_1;
sfx_walk_1_inst		= undefined;
sfx_walk_2_sound	= sfx_footstep_2;
sfx_walk_2_inst		= undefined;