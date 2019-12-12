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

facing				= 1;
fall_timer			= 0;

state				= undefined;

wall_left	= place_meeting(x - 1, y, obj_solid);
wall_right	= place_meeting(x + 1, y, obj_solid);

can_be_hurt_default	= true;
can_be_hurt			= can_be_hurt_default;