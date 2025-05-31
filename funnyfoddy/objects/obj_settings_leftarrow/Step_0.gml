/// @desc

if (pressed_on == true) && (instance_position(mouse_x, mouse_y, self)) && (mouse_check_button_released(mb_left)){
	
	pressed_on = false
	
	global.gamerating += 1
	
	if (global.gamerating < -5){
	
		global.gamerating = -5
	
	}

	if (global.gamerating == -5){
		
		with(obj_settings_leftarrow){
		x = global.cameraX+357
		y = global.cameraY+218
		}
		
		with(obj_settings_rightarrow){
		x = global.cameraX+528
		y = global.cameraY+218
		}
		
		with(obj_settings_gamerating){
			sprite_index = _11111111111_acompleteloadofpants
		}
	}

	if (global.gamerating == -4){
		
		with(obj_settings_leftarrow){
			x = global.cameraX+379
			y = global.cameraY+218
		}
		
		with(obj_settings_rightarrow){
			x = global.cameraX+507
			y = global.cameraY+218
		}
		
		with(obj_settings_gamerating){
			sprite_index = _1111111111_aloadofpants
		}
	
	}

	if (global.gamerating == -3){
		
		with(obj_settings_leftarrow){
			x = global.cameraX+386
			y = global.cameraY+218
		}
		
		with(obj_settings_rightarrow){
			x = global.cameraX+499
			y = global.cameraY+218
		}
		
		with(obj_settings_gamerating){
			sprite_index = _111111111_terrible
		}
	
	}

	if (global.gamerating == -2){
		
		with(obj_settings_leftarrow){
			x = global.cameraX+399
			y = global.cameraY+218
		}
		
		with(obj_settings_rightarrow){
			x = global.cameraX+487
			y = global.cameraY+218
			
		}
		
		with(obj_settings_gamerating){
			sprite_index = _11111111_awful
		}
	
	}

	if (global.gamerating == -1){
		
		with(obj_settings_leftarrow){
			x = global.cameraX+409
			y = global.cameraY+218
		}
		
		with(obj_settings_rightarrow){
		x = global.cameraX+476
		y = global.cameraY+218
		}
		
		with(obj_settings_gamerating){
			sprite_index = _1111111_bad
		}
	
	}

	if (global.gamerating == 0){
		
		with(obj_settings_leftarrow){
		x = global.cameraX+378
		y = global.cameraY+218	
		}
		
		with(obj_settings_rightarrow){
		x = global.cameraX+508
		y = global.cameraY+218
		}
		
		with(obj_settings_gamerating){
			sprite_index = _111111_mediocre
		}
	
	}

	if (global.gamerating == 1){
		
		with(obj_settings_leftarrow){
			x = global.cameraX+400
			y = global.cameraY+218
		}
		
		with(obj_settings_rightarrow){
			x = global.cameraX+486
			y = global.cameraY+218	
		}
		
		with(obj_settings_gamerating){
			sprite_index = _11111_good
		}
	
	}

	if (global.gamerating == 2){
		
		with(obj_settings_leftarrow){
			x = global.cameraX+399
			y = global.cameraY+218
		}
		
		with(obj_settings_rightarrow){
			x = global.cameraX+486
			y = global.cameraY+218
		}
		
		with(obj_settings_gamerating){
			sprite_index = _1111_great
		}
	
	}

	if (global.gamerating == 3){
		
		with(obj_settings_leftarrow){
			x = global.cameraX+381
			y = global.cameraY+218
		}
		
		with(obj_settings_rightarrow){
			x = global.cameraX+504
			y = global.cameraY+218
		}
		
		with(obj_settings_gamerating){
			sprite_index = _111_excellent
		}
	
	}

	if (global.gamerating == 4){
		
		with(obj_settings_leftarrow){
			x = global.cameraX+361
			y = global.cameraY+218
		}
		
		with(obj_settings_rightarrow){
			x = global.cameraX+525
			y = global.cameraY+218
		}
		
		with(obj_settings_gamerating){
			sprite_index = _11_betterthantheoriginals
		}
	
	}

	if (global.gamerating == 5){
		
		with(obj_settings_leftarrow){
			x = global.cameraX+368
			y = global.cameraY+218
		}
		
		with(obj_settings_rightarrow){
			x = global.cameraX+517
			y = global.cameraY+218
		}
		
		with(obj_settings_gamerating){
			sprite_index = _1_goty2022
		}
	
	}
	
	if (global.gamerating > 5){
	
	global.gamerating = 5
	
	}
}