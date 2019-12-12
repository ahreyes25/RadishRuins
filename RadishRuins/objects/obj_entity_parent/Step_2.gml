var vxNew, vyNew;

cx += vx;
cy += vy;
vxNew = round(cx);
vyNew = round(cy);
cx -= vxNew;
cy -= vyNew;

jumped = false;
landed = false;

if (vy < 1 && vy > -1)
    platform_check();
else
    repeat(abs(vyNew)) {
        if (!platform_check())
            y += sign(vyNew);
        else
            break;
    }

if (platform_target) {
    if (!on_ground)
        landed = true;
    
    if (landed) {
        with (platform_target)
			other.vy = 0;
	}
    else {
        with (platform_target)
			other.vy = 0;
	}
}

// Sup-Pixel Movement When In Slow Motion
if (vx < 1.0 && vx > -1.0)
	var _vx = vxNew;
// Non-Sub-Pixel Movement When Not In Slow Motion
else
	var _vx = vx;
	
repeat(abs(_vx)) {
	// Hold Up to Walk On Pass Through Ramps
	if (key_up) {
		if (place_meeting(x + sign(vx), y, obj_solid_slope_pass_parent) && !place_meeting(x + sign(vx), y - 1, obj_solid_slope_pass_parent))
			y -= 1;
	} 
	if (place_meeting(x + sign(vx), y, obj_solid_slope_parent) && !place_meeting(x + sign(vx), y - 1, obj_solid_slope_parent))
		y -= 1;     
	if (place_meeting(x + sign(vx), y + 2, obj_solid_parent) && !place_meeting(x + sign(vx), y + 1, obj_solid_parent))
		y += 1;
        
	// Only obj_solid Acts As A Wall
	if (!place_meeting(x + sign(vx), y, obj_solid))
	    x += sign(vx);
	else
	    vx = 0;
}