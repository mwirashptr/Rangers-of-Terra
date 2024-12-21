//create the Camera
var _w = global.res.width
var _h = global.res.height
camera = camera_create_view(
	0, 0, _w, _h, 0, obj_camera, -1, -1, 
	_w / 2, _h / 2
);

// enabling view and turn on view 0
view_enabled = true;
view_visible[0] = true;

// assign camera to viewport 0
view_set_camera(0, camera);

var _near1 = layer_get_id("Tiles_1");
var _near2 = layer_get_id("Tiles_2");
var _near3 = layer_get_id("Tiles_3");

layer_x(_near1, lerp(0, camera_get_view_x(view_camera[0]), 0.5));
layer_x(_near2, lerp(0, camera_get_view_x(view_camera[0]), 0.7)); 
layer_x(_near3, lerp(0, camera_get_view_x(view_camera[0]), 0.9)); 