/// @desc turn into pic of white guy/tear down this wall

if (room == rm_classic)
{
	//yes i know there are 39 red squares
	if(score >= 38){
		
		sprite_index = spr_winface;
		instance_create_depth(x,y-25,22,obj_devguide)
		audio_stop_all()
		audio_play_sound(mus_well_mine_again_midi,1,false)
	}

	
	if(score == 0){
		
		with(obj_inviswall) 
			if (place_meeting(x,y,obj_limecockblock)){
				instance_destroy()
			}
			
		audio_stop_all()
		
		instance_destroy(obj_limecockblock)
		instance_destroy()
		
		audio_stop_all()
		audio_play_sound(mus_well_mine_again_midi,1,false)
		
	}
}

if (room == rm_gettingoverit)
{
	
	room = rm_FNAFreference
	audio_play_sound(sfx_miscellaneous_1_sean,1,0)
	
}