/// @desc

//moving angle of boss
image_angle += (angletarget - image_angle) * 0.1

//movement code
if (move == 1){
		if(y < -128){
			move = 1.5
			alarm[1] = 15 //how long it's gonna wait up above before smashing back down
			vspeed = 0
			place = choose(0,1,2,3)
			if (place == 0){
				 x = 190
				 y = -128
			}else if (place == 1){
				 x = 770
				 y = -128
			}else if (place == 2){
				 x = 1344
				 y = -128
			}else if (place == 3){
				if (instance_exists(obj_player)){
					x = obj_player.x	
				}else x = 190
				y = -128
			}
		}else{
			//if (vspeed != -upspd)
				vspeed = -upspd
		}
}else if (move == 2){
	vspeed += downspd
	if (y>= room_height/2){
		if (y >= room_height-192){
			vspeed = 0
			y = room_height-128
			move = 3
			alarm[2] = room_speed * waittime
		}
	}
}



if (vspeed == 0 && move != 2 && move != 3){
	
	if (dir_c >= 2){
		
		var bobbing = 10
		if (dir_z == 0){
			
			if (z >= -bobbing) z--
			else dir_z = 1
			
		}else if (dir_z == 1){
			if (z <= bobbing)z++
			else dir_z = 0
		}
		dir_c = 0
	}else dir_c++
			
}