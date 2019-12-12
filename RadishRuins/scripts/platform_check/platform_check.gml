/// @description  platform_check

var collision = instance_place(x, y + sign(vy), obj_solid);

if (collision) {
    if (vy >= 0) {
        platform_target = collision;
    } else {
        // Platform above
        vy = 0;
    }
    return true;
}

if (vy < 0) {
    platform_target = 0;
}

if (instance_exists(platform_target)) {
    if (platform_target) {
        if (place_meeting(x, y + 1, platform_target) && !place_meeting(x, y, platform_target)) {
            //Platform below
            vy = 0;
            return true;
        } else
            platform_target = 0;
    }
} else
    platform_target = 0;
    
if (vy > 0) {
    with (obj_entity_parent) {
        {
            if (place_meeting(x, y - 1, other) && !place_meeting(x, y, other)) {
                vy = 0;
            }
        }
    }
    
    with (obj_solid_pass) {
        if (place_meeting(x, y - 1, other) && !place_meeting(x, y, other)) {
            // Land
            vy = 0;
            other.platform_target = id;
            return true;
        }
    }
	
	with (obj_solid_slope_pass_left) {
        if (place_meeting(x, y - 1, other) && !place_meeting(x, y, other)) {
            // Land
            vy = 0;
            other.platform_target = id;
            return true;
        }
    }
	
	//with (obj_ladder) {
    //    if (place_meeting(x, y - 1, other) && !place_meeting(x, y, other)) {
    //        // Land
    //        vy = 0;
    //        other.platform_target = id;
    //        return true;
    //    }
    //}
}

platform_target = 0;
return false;
