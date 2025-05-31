/// @desc

if (pressed_on == true) && (instance_position(mouse_x, mouse_y, self)) && (mouse_check_button_released(mb_left)){
	
	pressed_on = false
	
	instance_create_depth(x,y,-22,obj_settings_extras)

	instance_create_depth(global.cameraX+33,global.cameraY+26,-22,obj_USAflag)
	instance_create_depth(global.cameraX+33,global.cameraY+64,-22,obj_NLflag)
	instance_create_depth(global.cameraX+52,global.cameraY+75,-22,obj_settings_text)
	instance_create_depth(global.cameraX+345,global.cameraY+86,-22,obj_slider_music)
	instance_create_depth(global.cameraX+345,global.cameraY+119,-22,obj_slider_voiceover)
	instance_create_depth(global.cameraX+345,global.cameraY+152,-22,obj_slider_effects)
	instance_create_depth(global.cameraX+343,global.cameraY+77,-22,obj_slider_details)
	instance_create_depth(global.cameraX+343,global.cameraY+110,-22,obj_slider_details)
	instance_create_depth(global.cameraX+343,global.cameraY+143,-22,obj_slider_details)
	instance_create_depth(global.cameraX+451,global.cameraY+228,-22,obj_settings_gamerating)
	instance_create_depth(global.cameraX+400,global.cameraY+218,-22,obj_settings_leftarrow)
	instance_create_depth(global.cameraX+500,global.cameraY+218,-22,obj_settings_rightarrow)
	instance_create_depth(global.cameraX+442,global.cameraY+300,-22,obj_settings_fullscreentoggle)
	instance_create_depth(global.cameraX+442,global.cameraY+333,-22,obj_settings_subtitlestoggle)
	instance_create_depth(global.cameraX+442,global.cameraY+366,-22,obj_settings_bloodtoggle)

	instance_destroy(self)
	
	instance_destroy(obj_architectural_engineering_icon_traffic_signs_01114f695fb9a07e32cc4da560d0e0ad)
	instance_destroy(obj_cheatbox)
	instance_destroy(obj_click_fart)
	instance_destroy(obj_click_testroom)
	instance_destroy(obj_click_classic)
	instance_destroy(obj_click_theater)
	instance_destroy(obj_click_controls)
	instance_destroy(obj_click_hardreset)
	instance_destroy(obj_click_wip3dsection)
	
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