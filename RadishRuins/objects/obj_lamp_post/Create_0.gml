var _hook_x = x + (19 * sign(image_xscale));
var _hook_y = y - 66;

lamp		= instance_create_layer(_hook_x, _hook_y, "Instances", obj_lamp);
lamp.post	= id;
joint		= physics_joint_revolute_create(id, lamp, _hook_x, _hook_y, 0, 0, 0, 0, 0, 0, 0);

sfx_emitter	= audio_emitter_create();
sounds		= [sfx_wood_creak_05, sfx_glass_1, sfx_glass_2];
sound_inst	= undefined;
audio_emitter_position(sfx_emitter, x, y, 0);