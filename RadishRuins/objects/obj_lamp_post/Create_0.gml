var _hook_x = x + (19 * sign(image_xscale));
var _hook_y = y - 66;

lamp		= instance_create_layer(_hook_x, _hook_y, "Instances", obj_lamp);
lamp.post	= id;
joint		= physics_joint_revolute_create(id, lamp, _hook_x, _hook_y, 0, 0, 0, 0, 0, 0, 0);