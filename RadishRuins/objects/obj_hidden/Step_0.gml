// Store Tiles
if (!stored_tiles) { 
	var _unscaled_width	 = sprite_get_width(sprite_index);
	var _unscaled_height = sprite_get_height(sprite_index);
	for (var i = 0; i < sprite_width; i += _unscaled_width) {
		for (var j = 0; j < sprite_height; j += _unscaled_height) {
			var _tile = tilemap_get_at_pixel(tilemap, i + x, j + y);
			var _tile_data = [_tile, x + i, y + j];
			ds_list_add(tiles, _tile_data);
		}
	}
	
	if (ds_list_size(tiles) > 0)
		stored_tiles = true;
}

// Touching Hidden Block
var _player = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, false);
if (defined(_player)) {
	
	// Zoom Camera
	camera_set_zoom_factor(0.6, -1, 0.1);
	
	// Hide Tiles
	if (!hid_tiles) {
		for (var i = 0; i < ds_list_size(tiles); i++) {
			var _tile_data	= tiles[| i];
			var _tile		= _tile_data[0];
			var _data		= tile_set_empty(_tile);
			tilemap_set_at_pixel(tilemap, _data, _tile_data[1], _tile_data[2]);
		}
		hid_tiles = true;
	}
	shown_tiles = false;
}
else {
	
	// Reset Camera Zoom
	camera_reset_zoom_factor();
	
	// Show Tiles
	if (!shown_tiles) {
		for (var i = 0; i < ds_list_size(tiles); i++) {
			var _tile_data	= tiles[| i];
			var _tile		= _tile_data[0];
			tilemap_set_at_pixel(tilemap, _tile, _tile_data[1], _tile_data[2]);
		}
		shown_tiles = true;
	}
	hid_tiles = false;
}