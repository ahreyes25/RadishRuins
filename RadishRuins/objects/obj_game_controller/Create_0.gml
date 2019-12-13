global_game_data();
global_player_data();
global_move_data();

debug				= instance_create_layer(0, 0, "Controllers", obj_debug);
ui_controller		= instance_create_layer(0, 0, "Controllers", obj_ui_controller);
light_controller	= instance_create_layer(0, 0, "Controllers", obj_lighting_controller);
camera				= instance_create_layer(0, 0, "Controllers", obj_camera);