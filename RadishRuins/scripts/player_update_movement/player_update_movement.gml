/// @param entity*

#region Arguments
if (argument_count == 1)
	var _obj = argument[0];
else
	var _obj = id;
#endregion

#region Exit Conditions
if (!instance_exists(_obj)) return;
#endregion

_obj.ground_accel		= global.movement_data[_obj.entity, MOVE.GROUND_ACCEL];
_obj.ground_fric		= global.movement_data[_obj.entity, MOVE.GROUND_FRIC];
_obj.air_accel			= global.movement_data[_obj.entity, MOVE.AIR_ACCEL];
_obj.air_fric			= global.movement_data[_obj.entity, MOVE.AIR_FRIC];
_obj.water_accel		= global.movement_data[_obj.entity, MOVE.WATER_ACCEL];
_obj.water_fric			= global.movement_data[_obj.entity, MOVE.WATER_FRIC];
_obj.vx_max				= global.movement_data[_obj.entity, MOVE.VX_MAX];
_obj.vy_max				= global.movement_data[_obj.entity, MOVE.VY_MAX];
_obj.vx_max_water		= global.movement_data[_obj.entity, MOVE.VX_MAX_WATER];
_obj.vy_max_water		= global.movement_data[_obj.entity, MOVE.VY_MAX_WATER];
_obj.vy_max_ladder		= global.movement_data[_obj.entity, MOVE.VY_MAX_LADDER];
_obj.grav_norm			= global.movement_data[_obj.entity, MOVE.GRAV_NORM];
_obj.grav_slide			= global.movement_data[_obj.entity, MOVE.GRAV_SLIDE]; 
_obj.grav_water			= global.movement_data[_obj.entity, MOVE.GRAV_WATER];
_obj.jump_thrust		= global.movement_data[_obj.entity, MOVE.JUMP_THRUST];
_obj.jump_height		= global.movement_data[_obj.entity, MOVE.JUMP_HEIGHT];
_obj.jump_height_water	= global.movement_data[_obj.entity, MOVE.JUMP_HEIGHT_WATER];