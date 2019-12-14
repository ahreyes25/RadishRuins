// Music
if (sfx_is_playing_array(sfx_hidden_jingle))
	audio_emitter_gain(global.sfx_emitter, 0.3);
else
	audio_emitter_gain(global.sfx_emitter, 1.0);