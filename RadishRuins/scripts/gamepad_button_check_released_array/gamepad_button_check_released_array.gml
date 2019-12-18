/// @param port
/// @param unicode

var _port = argument0;
var _code = argument1;

if (!is_array(_code))
	return gamepad_button_check_released(_port, _code);
else {
	for (var i = 0; i < array_length_1d(_code); i++) {
		if (gamepad_button_check_released(_port, _code))
			return true;
	}
}	
return false;