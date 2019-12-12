#region Enums
enum DIR
{
	NONE, LEFT, RIGHT, UP, DOWN	
}

enum PLAYER
{
	P1, P2	
}

enum _
{
	X, Y	
}
#endregion

global.paused				= false;
global.game_score			= 0;

// User Settings
global.screen_shake_mult	= 1.0;
global.screen_flash_mult	= 1.0;
global.sound_mult			= 0.5;
global.music_mult			= 1.0;

// Audio Emitters
audio_falloff_set_model(audio_falloff_linear_distance);
audio_master_gain(global.sound_mult);

// Game Colors