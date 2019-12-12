/// @description	Get Player Input
/// @param			pid*

#region Arguments
if (argument_count == 1)
	var _pid = argument[0];
else
	var _pid = pid;
#endregion

// Keyboard Input
var _k_right			= global.player_data[_pid, PP.KEY_RIGHT];
var _k_left				= global.player_data[_pid, PP.KEY_LEFT];
var _k_up				= global.player_data[_pid, PP.KEY_UP];
var _k_down				= global.player_data[_pid, PP.KEY_DOWN];
var _k_jump				= global.player_data[_pid, PP.KEY_JUMP];

key_right				= keyboard_check(_k_right);
key_right_pressed		= keyboard_check_pressed(_k_right);
key_right_released		= keyboard_check_released(_k_right);
key_left				= keyboard_check(_k_left);
key_left_pressed		= keyboard_check_pressed(_k_left);
key_left_released		= keyboard_check_released(_k_left);
key_up					= keyboard_check(_k_up);
key_up_pressed			= keyboard_check_pressed(_k_up);
key_up_released			= keyboard_check_released(_k_up);
key_down				= keyboard_check(_k_down);
key_down_pressed		= keyboard_check_pressed(_k_down);
key_down_released		= keyboard_check_released(_k_down);
key_jump				= keyboard_check(_k_jump);
key_jump_pressed		= keyboard_check_pressed(_k_jump);
key_jump_released		= keyboard_check_released(_k_jump);

// Gamepad Input
var _gp_threshold		= global.player_data[_pid, PP.GP_THRESHOLD];
var _gp_port			= global.player_data[_pid, PP.GP_PORT];
var _gp_move_axis_horiz = global.player_data[_pid, PP.GP_MOVE_AXIS_HORIZ];
var _gp_move_axis_vert	= global.player_data[_pid, PP.GP_MOVE_AXIS_VERT];
var _gp_aim_axis_horiz	= global.player_data[_pid, PP.GP_AIM_AXIS_HORIZ];
var _gp_aim_axis_vert	= global.player_data[_pid, PP.GP_AIM_AXIS_VERT];
var _gp_right			= global.player_data[_pid, PP.GP_RIGHT];
var _gp_left			= global.player_data[_pid, PP.GP_LEFT];
var _gp_up				= global.player_data[_pid, PP.GP_UP];
var _gp_down			= global.player_data[_pid, PP.GP_DOWN];
var _gp_jump			= global.player_data[_pid, PP.GP_JUMP];

if (gamepad_is_connected(_gp_port)) {
	key_right				= key_right					|| gamepad_button_check(_gp_port, _gp_right)			|| (gamepad_axis_value(_gp_port, _gp_move_axis_horiz) >=  _gp_threshold);
	key_right_pressed		= key_right_pressed			|| gamepad_button_check_pressed(_gp_port, _gp_right)	|| (gamepad_axis_value(_gp_port, _gp_move_axis_horiz) >=  _gp_threshold);
	key_right_released		= key_right_released		|| gamepad_button_check_released(_gp_port, _gp_right);
	key_left				= key_left					|| gamepad_button_check_pressed(_gp_port, _gp_left)		|| (gamepad_axis_value(_gp_port, _gp_move_axis_horiz) <= -_gp_threshold);
	key_left_pressed		= key_left_pressed			|| gamepad_button_check_pressed(_gp_port, _gp_left)		|| (gamepad_axis_value(_gp_port, _gp_move_axis_horiz) <= -_gp_threshold);
	key_left_released		= key_left_released			|| gamepad_button_check_pressed(_gp_port, _gp_left);
	key_up					= key_up					|| gamepad_button_check_pressed(_gp_port, _gp_up)		|| (gamepad_axis_value(_gp_port, _gp_move_axis_vert)  <= -_gp_threshold);
	key_up_pressed			= key_up_pressed			|| gamepad_button_check_pressed(_gp_port, _gp_up)		|| (gamepad_axis_value(_gp_port, _gp_move_axis_vert)  <= -_gp_threshold);
	key_up_released			= key_up_released			|| gamepad_button_check_pressed(_gp_port, _gp_up);
	key_down				= key_down					|| gamepad_button_check_pressed(_gp_port, _gp_down)		|| (gamepad_axis_value(_gp_port, _gp_move_axis_vert)  >=  _gp_threshold);
	key_down_pressed		= key_down_pressed			|| gamepad_button_check_pressed(_gp_port, _gp_down)		|| (gamepad_axis_value(_gp_port, _gp_move_axis_vert)  >=  _gp_threshold);
	key_down_released		= key_down_released			|| gamepad_button_check_pressed(_gp_port, _gp_down);
	key_jump				= key_jump					|| gamepad_button_check(_gp_port, _gp_jump);
	key_jump_pressed		= key_jump_pressed			|| gamepad_button_check_pressed(_gp_port, _gp_jump);
	key_jump_released		= key_jump_released			|| gamepad_button_check_released(_gp_port, _gp_jump);
}