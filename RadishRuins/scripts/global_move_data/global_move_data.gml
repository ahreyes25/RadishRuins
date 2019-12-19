#region Enums
enum ENTITY 
{
	PLAYER, SPIKEY
}

enum MOVE
{
	GROUND_ACCEL, 
	GROUND_FRIC, 
	AIR_ACCEL, 
	AIR_FRIC, 
	WATER_ACCEL, 
	WATER_FRIC,
	VX_MAX, 
	VY_MAX, 
	VX_MAX_WATER, 
	VY_MAX_WATER, 
	VY_MAX_LADDER,
	GRAV_NORM,
	GRAV_SLIDE, 
	GRAV_WATER, 
	JUMP_THRUST, 
	JUMP_HEIGHT, 
	JUMP_HEIGHT_WATER
}
#endregion

#region Player
var _multiplier = 1.0
global.movement_data[ENTITY.PLAYER, MOVE.GROUND_ACCEL]		= 2.000 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.GROUND_FRIC]		= 0.500 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.AIR_ACCEL]			= 0.500 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.AIR_FRIC]			= 0.300 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.WATER_ACCEL]		= 0.500 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.WATER_FRIC]		= 0.100 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.VX_MAX]			= 6.000 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.VY_MAX]			= 20.00 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.VX_MAX_WATER]		= 4.000 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.VY_MAX_WATER]		= 1.000 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.VY_MAX_LADDER]		= 4.000 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.GRAV_NORM]			= 0.900 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.GRAV_SLIDE]		= 0.150 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.GRAV_WATER]		= 0.200 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.JUMP_THRUST]		= 12.00 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.JUMP_HEIGHT]		= 30.00 * _multiplier;
global.movement_data[ENTITY.PLAYER, MOVE.JUMP_HEIGHT_WATER]	= 4.000 * _multiplier;
#endregion

#region Spikey
global.movement_data[ENTITY.SPIKEY, MOVE.GROUND_ACCEL]		= 0.800 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.GROUND_FRIC]		= 0.500 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.AIR_ACCEL]			= 0.500 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.AIR_FRIC]			= 0.300 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.WATER_ACCEL]		= 0.500 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.WATER_FRIC]		= 0.100 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.VX_MAX]			= 1.000 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.VY_MAX]			= 20.00 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.VX_MAX_WATER]		= 4.000 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.VY_MAX_WATER]		= 1.000 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.VY_MAX_LADDER]		= 4.000 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.GRAV_NORM]			= 0.900 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.GRAV_SLIDE]		= 0.150 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.GRAV_WATER]		= 0.200 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.JUMP_THRUST]		= 12.00 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.JUMP_HEIGHT]		= 30.00 * _multiplier;
global.movement_data[ENTITY.SPIKEY, MOVE.JUMP_HEIGHT_WATER]	= 4.000 * _multiplier;
#endregion