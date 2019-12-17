global_game_data();
global_player_data();
global_move_data();

debug				= undefined;
ui_controller		= undefined;
light_controller	= undefined;
camera				= undefined;
player				= undefined;

// Sounds
global.sfx_emitter	= audio_emitter_create();
sfx_inst_music		= undefined;
sfx_inst_crickets	= undefined;

// room_goto_next(); --> done once window resizes