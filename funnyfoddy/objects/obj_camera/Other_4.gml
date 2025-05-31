/// @desc camera setup

//camera
if (room != rm_title) {global.cameraY = 0}
global.cameraX = 0

target = obj_player;

if (room != rm_Boss) {
	global.cameraWidth = 640;
	global.cameraHeight = 510;
} else {
	global.cameraWidth = 1122;
	global.cameraHeight = 896;
}

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

//i fucking hate coding
global.settingspressed = false
global.extraspressed = false

////display
//displayScale = 1;
//displayWidth = global.cameraWidth * displayScale;
//displayHeight = global.cameraHeight * displayScale;
//
//window_set_size(displayWidth,displayHeight);
//surface_resize(application_surface,displayWidth,displayHeight);

//GUI
display_set_gui_size(global.cameraWidth, global.cameraHeight);

//alarm[0] = 1;