//detect controller
if (keyboard_check(vk_anykey)) || (mouse_button) {
	window_set_cursor(cr_default);
	global.controller = 0
}

if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2) || (gamepad_button_check_pressed(0,gp_start)) || (gamepad_button_check_pressed(0,gp_face1)) || (gamepad_button_check_pressed(0,gp_face2)) || (gamepad_button_check_pressed(0,gp_face3)) || (gamepad_button_check_pressed(0,gp_face4)){
	window_set_cursor(cr_none);
	global.controller = 1
}

if (abs(gamepad_axis_value(4,gp_axislh)) > 0.2) || (gamepad_button_check_pressed(4,gp_start)) || (gamepad_button_check_pressed(4,gp_face1)) || (gamepad_button_check_pressed(4,gp_face2)) || (gamepad_button_check_pressed(4,gp_face3)) || (gamepad_button_check_pressed(4,gp_face4)){
	window_set_cursor(cr_none);
	global.controller = 2
}

//no mouse in 3d part
if (room == rm_3DeezNuts) && (global.paused == false){
	window_set_cursor(cr_none)
} else {
	window_set_cursor(cr_default)
}

//restart room button
if (keyboard_check_direct(vk_f2)) || (gamepad_button_check_pressed(0,gp_padu)) || (gamepad_button_check_pressed(4,gp_padu))
{
	
	if (room == rm_gettingoverit)
	{
		if (file_exists("data.sav")) {file_delete("data.sav")}
		
		var file;
		file = file_text_open_write("data.sav");
		file_text_write_real(file,591); //player x coordinate
		file_text_writeln(file)
		file_text_write_real(file,31726); //player y coordinate
		file_text_writeln(file)
		file_text_write_real(file,1); //player jumps remaining
		file_text_writeln(file)
		file_text_write_real(file,1); //player double jumps remaining
		file_text_writeln(file)
		file_text_write_real(file,0); //red squares collected
		file_text_close(file)
		
		audio_stop_all()
		room_goto(rm_gettingoverit)
	}
	
	if (room == rm_classic) || (room == rm_classic_REALLYwin)
	{
		audio_stop_all()
		room_goto(rm_classic)
	}
	
	if (room == rm_controls) || (room == rm_testroom)
	{
		audio_stop_all()
		room_restart()
	}
	
	score = 0
}

//unpause
if (room != rm_title) && (room != rm_haveyouplayed)
{
	if (keyboard_check_pressed(vk_escape)) || (gamepad_button_check_pressed(0,gp_start)) || (gamepad_button_check_pressed(4,gp_start))
	    {
	    global.paused = !global.paused;
	    if (global.paused == false)
	        {
	        instance_activate_all();
	        surface_free(global.paused_surf);
	                global.paused_surf = -1;
			
			//get rid of the settings
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
	if (global.paused == true)
	{
		alarm[0]++;
		alarm[1]++;
	}
}

if (room == rm_title) && (keyboard_check_pressed(vk_escape)) {
	global.settingspressed = false
	global.extraspressed = false
	global.cameraX = 0
	global.cameraY = 0
	audio_stop_sound(mus_intro)
}