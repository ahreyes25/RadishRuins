#region Enums
enum PP 
{ 
	KEY_RIGHT, KEY_LEFT, KEY_UP, KEY_DOWN, KEY_JUMP,
	GP_THRESHOLD, GP_PORT, GP_MOVE_AXIS_HORIZ, GP_MOVE_AXIS_VERT, GP_AIM_AXIS_HORIZ, GP_AIM_AXIS_VERT, 
	GP_RIGHT, GP_LEFT, GP_UP, GP_DOWN, GP_JUMP,
}

enum MOVE
{
	GROUND_ACCEL, GROUND_FRIC, AIR_ACCEL, AIR_FRIC, WATER_ACCEL, WATER_FRIC,
	VX_MAX, VY_MAX, VX_MAX_WATER, VY_MAX_WATER, VY_MAX_LADDER, GRAV_NORM,
	GRAV_SLIDE, GRAV_WATER, JUMP_THRUST, JUMP_HEIGHT, JUMP_HEIGHT_WATER
}
#endregion

global.player_max_hearts	= 3;
global.player_hearts		= global.player_max_hearts;
global.player_keys			= 0;
global.player_ground_pos	= [];
global.player_can_pick		= false;
global.player_can_swim		= false;
global.player_can_roll		= false;
#macro MAX_HEARTS	global.player_max_hearts
#macro HEARTS		global.player_hearts
#macro KEYS			global.player_keys
#macro GROUND_POS	global.player_ground_pos
#macro CAN_PICK		global.player_can_pick
#macro CAN_SWIM		global.player_can_swim
#macro CAN_ROLL		global.player_can_roll

// Input Data
global.player_data[PLAYER.P1, PP.KEY_RIGHT]				= ord("D");
global.player_data[PLAYER.P1, PP.KEY_LEFT]				= ord("A");          
global.player_data[PLAYER.P1, PP.KEY_UP]				= ord("W");
global.player_data[PLAYER.P1, PP.KEY_DOWN]				= ord("S");
global.player_data[PLAYER.P1, PP.KEY_JUMP]				= vk_space;
   
global.player_data[PLAYER.P1, PP.GP_THRESHOLD]			= 0.1;
global.player_data[PLAYER.P1, PP.GP_PORT]				= PLAYER.P1;
global.player_data[PLAYER.P1, PP.GP_MOVE_AXIS_HORIZ]	= gp_axislh;
global.player_data[PLAYER.P1, PP.GP_MOVE_AXIS_VERT]		= gp_axislv;
global.player_data[PLAYER.P1, PP.GP_AIM_AXIS_HORIZ]		= gp_axisrh;
global.player_data[PLAYER.P1, PP.GP_AIM_AXIS_VERT]		= gp_axisrv;
global.player_data[PLAYER.P1, PP.GP_RIGHT]				= gp_padr;
global.player_data[PLAYER.P1, PP.GP_LEFT]				= gp_padl;
global.player_data[PLAYER.P1, PP.GP_UP]					= gp_padu;
global.player_data[PLAYER.P1, PP.GP_DOWN]				= gp_padd;
global.player_data[PLAYER.P1, PP.GP_JUMP]				= gp_face1;