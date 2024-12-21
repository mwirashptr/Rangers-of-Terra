global.res =
{
	width: 320,
	height: 180,
	scale: 4
}

var _width = global.res.width * global.res.scale;
var _height = global.res.height * global.res.scale;

// set resolution of the game
surface_resize(application_surface, _width, _height);

// Window size
window_set_size(_width, _height);

// GUI size
display_set_gui_size(_width, _height);

// centering the Window
var _display_width = display_get_width();
var _display_height = display_get_height();

window_set_position(
	_display_width / 2 - _width / 2,
	_display_height / 2 - _height / 2
);

window_set_fullscreen(true);