// Hearts
draw_sprite(spr_player_head, 0, 50, 50);
draw_text(70, 45, string(HEARTS) + "/" + string(MAX_HEARTS));

// Number of Keys
key_image_index += key_image_speed;
draw_sprite(spr_key, key_image_index, 50, 100);
draw_text(70, 90, "x " + string(KEYS));

// Jewels

// Item 1

// Item 2

// Item 3