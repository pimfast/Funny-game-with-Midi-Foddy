/// @desc

if (pressed_on == true) && (instance_position(mouse_x, mouse_y, self)) && (mouse_check_button_released(mb_left)){
	
	pressed_on = false
	
	instance_create_depth(x,y,-22,obj_settings_settings)
	
	instance_destroy(obj_USAflag,false)
	instance_destroy(obj_NLflag,false)
	instance_destroy(obj_settings_text,false)
	instance_destroy(obj_slider_details,false)
	instance_destroy(obj_slider_music,false)
	instance_destroy(obj_slider_voiceover,false)
	instance_destroy(obj_slider_effects,false)
	instance_destroy(obj_settings_gamerating,false)
	instance_destroy(obj_settings_leftarrow,false)
	instance_destroy(obj_settings_rightarrow,false)
	instance_destroy(obj_settings_fullscreentoggle,false)
	instance_destroy(obj_settings_subtitlestoggle,false)
	instance_destroy(obj_settings_bloodtoggle,false)
	instance_destroy(obj_settings_togglefiller,false)

	instance_destroy(self)
	
	instance_create_depth(global.cameraX+38,global.cameraY+131,-22,obj_architectural_engineering_icon_traffic_signs_01114f695fb9a07e32cc4da560d0e0ad)
	instance_create_depth(global.cameraX+62,global.cameraY+79,-22,obj_cheatbox)
	instance_create_depth(global.cameraX+350,global.cameraY+75,-22,obj_click_fart)
	instance_create_depth(global.cameraX+350,global.cameraY+150,-22,obj_click_testroom)
	instance_create_depth(global.cameraX+350,global.cameraY+250,-22,obj_click_classic)
	instance_create_depth(global.cameraX+350,global.cameraY+350,-22,obj_click_theater)
	instance_create_depth(global.cameraX+470,global.cameraY+75,-22,obj_click_controls)
	instance_create_depth(global.cameraX+470,global.cameraY+150,-22,obj_click_hardreset)
	instance_create_depth(global.cameraX+470,global.cameraY+350,-22,obj_click_wip3dsection)

}

if (os_is_paused()) {
	
	if (image_index == 4) {
		image_index = 1
	}
	
	if (image_index == 3) {
		image_index = 0	
	}
		
	if (image_index == 2) {
		image_index = 1	
	}
	
}