/// @description Create

// Debug Menu
debugging	= false;
menu_index	= 1;
resolutions	= [
	// iphones
	[1792,	828],	// iphone xr
	[2688,	1242],	// iphone xs max
	[2436,	1125],	// iphone x / iphone xs
	[1920,	1080],	// iphone 8 plus
	[1334,	750],	// iphone 8
	[1920,	1080],	// iphone 7 plus
	[1334,	750],	// iphone 7
	
	// ipads
	[2732,	2048],	// ipad pro
	[2048,	1536],	// ipad 3rd & 4th gen
	
	// android
	[2560,	1440],
	[2960,	1440],
	[1920,	1200],
	[1280,	800],
	[2560,	1700]
];
menu_length	= array_length_1d(resolutions);

var _resolution = resolutions[menu_index];
window_update_resolution(_resolution[_.X] / 2, _resolution[_.Y] / 2);

// HUD
quad_width		= surface_get_width(application_surface)  / 2;
quad_height		= surface_get_height(application_surface) / 2;
top_left		= surface_create(quad_width, quad_height);
top_right		= surface_create(quad_width, quad_height);
hud_scale		= 1.0;
hud_alpha		= 1.0;