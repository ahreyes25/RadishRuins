CURRENT_TIME_FRAME++;

if (room == rm_init) {
	if (!exists(ui_controller))
		ui_controller = instance_create_layer(0, 0, "Controllers", obj_ui_controller);
}

if (room != rm_init) {

	// Debug
	if (!exists(debug))
		debug = instance_create_layer(0, 0, "Controllers", obj_debug);
		
	// Lighting Controller
	if (!exists(light_controller))
		light_controller = instance_create_layer(0, 0, "Controllers", obj_lighting_controller);

	// Starting Game Sounds
	if (!sfx_is_playing_array(sfx_inst_crickets))
		sfx_inst_crickets = sfx_play_array(global.sfx_emitter, sfx_crickets, 1);
	//if (!sfx_is_playing_array(sfx_inst_music))
		//sfx_inst_music = sfx_play_array(global.sfx_emitter, sfx_music_1, 1);	
		
	// Player
	if (!exists(player)) {
		var _pos = MAP_DATA[? room_get_name(room)];
		var _x	 = _pos[0];
		var _y	 = _pos[1];
		player	 = instance_create_layer(_x, _y, "Instances", obj_player);
	}
	
	// Camera
	if (!exists(camera) && exists(player))
		camera = instance_create_layer(player.x, player.y, "Controllers", obj_camera);
	else if (!exists(camera))
		camera = instance_create_layer(0, 0, "Controllers", obj_camera);
}

// Position Audio Emitter
if (exists(camera))
	audio_emitter_position(global.sfx_emitter, camera.x, camera.y, 0);	