/// @description Physics Collisions

if (defined(post) && chance(10))
	if (!sfx_is_playing_array(post.sound_inst))
		post.sound_inst = sfx_play_array(post.sfx_emitter, post.sounds);	