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

// Screen Resolution
global.screen_width		= 562;
global.screen_height	= 1218;

// Game Colors