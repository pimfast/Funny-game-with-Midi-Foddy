/// @desc floaty number & settings

//all of the levels have a red number following you
if (room == rm_classic) && (score > 50) || (room == rm_gettingoverit) && (score > 50){
	
	draw_text_color(260,220,string(score),c_red,c_red,c_red,c_red,1);
	
}

//control info
if (room == rm_controls){
	
	if (global.controller = 0) {
		
		draw_text_transformed_color(50,109,"Esc",2,2,0,c_grey,c_grey,c_grey,c_grey,1);
		draw_text_transformed_color(388,53,"F2",2,2,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
		draw_text_transformed_color(145,245,"Tab",2,2,0,c_blue,c_blue,c_blue,c_blue,1);

		draw_text_color(192,484,"please try all the controls before returning to the title screen",c_black,c_black,c_black,c_black,1);
	
	}
	if (global.controller = 1) {
		
		draw_sprite_stretched(XboxOne_Menu,-1,44,80,63,63)
		draw_sprite_stretched(XboxOne_Dpad_Up,-1,379,22,63,63)
		draw_sprite_stretched(XboxOne_Dpad_Down,-1,145,214,63,63)

		draw_text_color(192,484,"please try all the controls before returning to the title screen",c_black,c_black,c_black,c_black,1);
	
	}
	if (global.controller = 2) {
		
		draw_sprite_stretched(PS4_Options,-1,44,80,63,63)
		draw_sprite_stretched(PS4_Dpad_Up,-1,379,22,63,63)
		draw_sprite_stretched(PS4_Dpad_Down,-1,145,214,63,63)

		draw_text_color(192,484,"please try all the controls before returning to the title screen",c_black,c_black,c_black,c_black,1);
	
	}
	
	draw_text_transformed_color(25,135,"settings",2,2,0,c_grey,c_grey,c_grey,c_grey,1);
	draw_text_transformed_color(365,77,"restart",2,2,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
	draw_text_transformed_color(85,269,"debug mode",2,2,0,c_blue,c_blue,c_blue,c_blue,1);
}

/// @desc

if (global.paused == true)
{
	if (room == rm_3DeezNuts) {
		
		audio_stop_all()
		
		score = 0
		
		room_goto(rm_title)
		
		global.extrasenabled = true
	}
	
	if !surface_exists(global.paused_surf)
	{
		if global.paused_surf == -1
		{
			//draw_sprite(obj_player.image_index,-1,obj_player.x,obj_player.y)
			instance_deactivate_all(true);
			instance_activate_object(obj_camera)
			

			instance_create_depth(global.cameraX+33,global.cameraY+26,0,obj_USAflag)
			instance_create_depth(global.cameraX+33,global.cameraY+64,0,obj_NLflag)
			instance_create_depth(global.cameraX+52,global.cameraY+75,0,obj_settings_text)
			instance_create_depth(global.cameraX+345,global.cameraY+86,0,obj_slider_music)
			instance_create_depth(global.cameraX+345,global.cameraY+119,0,obj_slider_voiceover)
			instance_create_depth(global.cameraX+345,global.cameraY+152,0,obj_slider_effects)
			instance_create_depth(global.cameraX+343,global.cameraY+77,0,obj_slider_details)
			instance_create_depth(global.cameraX+343,global.cameraY+110,0,obj_slider_details)
			instance_create_depth(global.cameraX+343,global.cameraY+143,0,obj_slider_details)
			instance_create_depth(global.cameraX+451,global.cameraY+228,0,obj_settings_gamerating)
			instance_create_depth(global.cameraX+400,global.cameraY+218,0,obj_settings_leftarrow)
			instance_create_depth(global.cameraX+500,global.cameraY+218,0,obj_settings_rightarrow)
			instance_create_depth(global.cameraX+442,global.cameraY+300,0,obj_settings_fullscreentoggle)
			instance_create_depth(global.cameraX+442,global.cameraY+333,0,obj_settings_subtitlestoggle)
			instance_create_depth(global.cameraX+442,global.cameraY+366,0,obj_settings_bloodtoggle)
			instance_create_depth(global.cameraX+50,global.cameraY+441,0,obj_settings_quit)
			instance_create_depth(global.cameraX+288,global.cameraY+441,0,obj_settings_extras)
			instance_create_depth(global.cameraX+510,global.cameraY+441,0,obj_settings_resume)
			instance_create_depth(global.cameraX,global.cameraY,0,obj_settingsbackground)
			
		}
	    global.paused_surf = surface_create(global.cameraWidth, global.cameraHeight);
	    surface_set_target(global.paused_surf);
	    draw_surface(application_surface, global.cameraX, global.cameraY);
	    surface_reset_target();
	} else {
		
	}
}