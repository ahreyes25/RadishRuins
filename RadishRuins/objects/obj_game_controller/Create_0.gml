global_game_data();
global_player_data();
global_move_data();

debug				= instance_create_layer(0, 0, "Controllers", obj_debug);
ui_controller		= instance_create_layer(0, 0, "Controllers", obj_ui_controller);
light_controller	= instance_create_layer(0, 0, "Controllers", obj_lighting_controller);
camera				= instance_create_layer(0, 0, "Controllers", obj_camera);

global.sfx_emitter	= audio_emitter_create();
sfx_inst_crickets	= sfx_play_array(global.sfx_emitter, sfx_crickets, 1);
sfx_inst_music		= sfx_play_array(global.sfx_emitter, sfx_music_1, 1);