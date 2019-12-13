/// @description Create

// Debug Menu
debugging	= false;
menu_index	= 0;
resolutions	= [
	// iphones
	[828,	1792],	// iphone xr
	[1242,	2688],	// iphone xs max
	[1125,	2436],	// iphone x / iphone xs
	[1080,	1920],	// iphone 8 plus
	[750,	1334],	// iphone 8
	[1080,	1920],	// iphone 7 plus
	[750,	1334],	// iphone 7
	
	// ipads
	[2048,	2732],	// ipad pro
	[1536,	2048],	// ipad 3rd & 4th gen
	
	// android
	[1440,	2560],
	[1440,	2960],
	[1200,	1920],
	[800,	1280],
	[1700,	2560]
];
menu_length	= array_length_1d(resolutions);

base_width		= global.screen_height / 2;		// starting width
base_height		= global.screen_width  / 2;		// starting height
width			= base_width;		
height			= base_height;		
aspect_ratio	= height / width;
update_res		= true;

// HUD
quad_width		= surface_get_width(application_surface)  / 2;
quad_height		= surface_get_height(application_surface) / 2;
top_left		= surface_create(quad_width, quad_height);
top_right		= surface_create(quad_width, quad_height);
hud_scale		= 1.0;
hud_alpha		= 1.0;

// Lighting
light_surface	= surface_create(room_width, room_height);