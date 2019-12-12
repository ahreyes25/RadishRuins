/// @param array

var _array = argument0;

if (!is_array(_array)) return undefined;
if (array_length_1d(_array) <= 0) return undefined;

return _array[irandom(array_length_1d(_array) - 1)];