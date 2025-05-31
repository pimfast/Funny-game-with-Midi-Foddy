/// @desc

if (pressed_on == true) && (instance_position(mouse_x, mouse_y, self)) && (mouse_check_button_released(mb_left)){
	
	pressed_on = false
	
	global.paused = !global.paused
	
	if (global.paused == false) {
	
	    instance_activate_all();
	    surface_free(global.paused_surf);
	            global.paused_surf = -1;
	
		audio_resume_all();
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
		instance_destroy(obj_settings_quit,false)
		instance_destroy(obj_settings_extras,false)
		instance_destroy(obj_settings_settings,false)
		instance_destroy(obj_settings_resume,false)
		instance_destroy(obj_settingsbackground,false)
		
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