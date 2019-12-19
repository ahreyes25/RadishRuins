#region Platforming
vx = 0;
vy = 0;
cx = 0;
cy = 0;

jumped				= false;
landed				= false;
platform_target		= 0;
takes_input			= false;

on_ground			= on_ground_check();
touching_ladder		= touching_ladder_check();
in_water			= false;
on_rock				= undefined;
on_wood				= undefined;

wall_left	= place_meeting(x - 1, y, obj_solid);
wall_right	= place_meeting(x + 1, y, obj_solid);
#endregion

facing			= sign(image_xscale);
state			= undefined;
scale			= 1;
can_be_hurt		= true;

lights			= light_double_create(x, (bbox_top + bbox_bottom) / 2, 0.6, 0.75);
sfx_emitter		= audio_emitter_create()

phy_body		= instance_create_layer(x, y, "Instances", obj_physics_body);
phy_body.owner	= id;