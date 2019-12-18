/// @param unicode

var _code = argument0;

if (!is_array(_code))
	return keyboard_check_pressed(_code);
else {
	for (var i = 0; i < array_length_1d(_code); i++) {
		if (keyboard_check_pressed(_code[i]))
			return true;
	}
}	
return false;