if (truck == 1) {
	x -= 15
}

if (place_meeting(x,y,obj_player)) {
	
	if (global.blood = 1) {
		repeat(30)
		{
			with(obj_player) {
				instance_create_layer(x, y, "Instances", obj_blood);
			}
		}
	}
	audio_play_sound(sfx_punch,1,0)
	instance_destroy(obj_player)
}

