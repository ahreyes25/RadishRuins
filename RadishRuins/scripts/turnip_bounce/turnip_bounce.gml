if (alarm[0] > -1)
	return;

life--;

audio_emitter_gain(sfx_emitter, 0.75);
if (life > 0)
	sfx_play_array(sfx_emitter, sfx_turnip_bounce);
else if (life <= 0 && visible) {
	sfx_play_array(sfx_emitter, sfx_turnip_destroy);	
	turnip_destroy(id);
}