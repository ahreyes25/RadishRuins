rope = instance_create_layer(x + (20 * sign(image_xscale)), y - 76, "Instances", obj_lamp_rope);
lamp = instance_create_layer(x + (20 * sign(image_xscale)), y - 66, "Instances", obj_lamp);

physics_joint_weld_create(id, rope, rope.x, rope.y, 0, 0, 0, 0);
physics_joint_weld_create(rope, lamp, lamp.x, lamp.y, 0, 0, 0, 0);
physics_joint_distance_create(id, rope, rope.x, rope.y, rope.x, rope.y, 0);
physics_joint_distance_create(rope, lamp, lamp.x, lamp.y, lamp.x, lamp.y, 0);
physics_joint_revolute_create(id, rope, rope.x, rope.y, 80, 360, 1, 0, 0, 0, 0);
physics_joint_revolute_create(rope, lamp, lamp.x, lamp.y, 80, 360, 1, 0, 0, 0, 0);

//physics_joint_rope_create(id, rope, rope.x, rope.y, rope.x, rope.y, 0, false);
//physics_joint_rope_create(rope, lamp, lamp.x, lamp.y, lamp.x, lamp.y, 0, false);