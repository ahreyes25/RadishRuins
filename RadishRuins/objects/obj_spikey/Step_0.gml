if (defined(state))  {
	script_execute(state);
	show_debug_message(script_get_name(state));
}

// Destroy If Out Of Room
if (place_meeting(x, y, obj_restart))
	instance_destroy();