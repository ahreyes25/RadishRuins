#region Enums
enum DIR
{
	NONE, 
	LEFT = -1, 
	RIGHT = 1, 
	UP, 
	DOWN	
}

enum PLAYER
{
	P1, 
	P2	
}

enum _
{
	X, 
	Y	
}

enum ENTITY 
{
	PLAYER	
}
#endregion

global.paused				= false;
global.game_score			= 0;

// User Settings
global.screen_shake_mult	= 1.0;
global.screen_flash_mult	= 1.0;
global.sound_mult			= 0.5;
global.music_mult			= 1.0;
#macro SOUND_MULT global.sound_mult
#macro MUSIC_MULT global.music_mult
#macro SHAKE_MULT global.screen_shake_mult
#macro FLASH_MULT global.screen_flash_mult

// Audio Emitters
audio_falloff_set_model(audio_falloff_linear_distance);
audio_master_gain(global.sound_mult);
audio_listener_orientation(0, 1, 0, 0, 0, 1);

global.screen_width		= 2688; 
global.screen_height	= 1242;
global.night_alpha		= 0.85;

// Player Spawn Position
global.map_data = ds_map_create();
#macro MAP_DATA global.map_data

MAP_DATA[? "rm_test"]	= [1056, 704];