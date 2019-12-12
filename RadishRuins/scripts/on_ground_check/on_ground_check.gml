
/// @description on_ground

return (
	 place_meeting(x, y + 1, obj_solid) || 
	(place_meeting(x, y + 1, obj_solid_pass) && !place_meeting(x, y, obj_solid_pass))
);