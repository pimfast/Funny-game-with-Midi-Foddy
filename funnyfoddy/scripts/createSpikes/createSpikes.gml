// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

var dir = argument0
var spd = argument1
	
if (dir == 0){ //horizontal
	
	//bottom spike
	s = instance_create_depth(x,y+(sprite_height/2),0,obj_BossProj)
	s.direction = 270
	s.speed = spd
	
	//left spike
	s = instance_create_depth(x-(sprite_width/2),y,0,obj_BossProj)
	s.direction = 180
	s.speed = spd
	
	//top spike
	s = instance_create_depth(x,y-(sprite_height/2),0,obj_BossProj)
	s.direction = 90
	s.speed = spd
	
	//right spike
	s = instance_create_depth(x+(sprite_width/2),y,0,obj_BossProj)
	s.direction = 0
	s.speed = spd
	
	
	
}else if (dir == 1){ //vertical
	
	//bottom spike
	s = instance_create_depth(x+(sprite_width/2),y+(sprite_height/2),0,obj_BossProj)
	s.direction = 315
	s.speed = spd
	
	//left spike
	s = instance_create_depth(x-(sprite_width/2),y+(sprite_height/2),0,obj_BossProj)
	s.direction = 225
	s.speed = spd
	
	//top spike
	s = instance_create_depth(x-(sprite_width/2),y-(sprite_height/2),0,obj_BossProj)
	s.direction = 135
	s.speed = spd
	
	//right spike
	s = instance_create_depth(x+(sprite_width/2),y-(sprite_height/2),0,obj_BossProj)
	s.direction = 45
	s.speed = spd
	
	
	
}