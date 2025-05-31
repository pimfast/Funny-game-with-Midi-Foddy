//follow target
if(instance_exists(target)){
	global.cameraX = target.x - (global.cameraWidth/2);
	global.cameraY = target.y - (global.cameraHeight/2);
	
	global.cameraX = clamp(global.cameraX, 0, room_width-global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height-global.cameraHeight);
}

//camera shake
global.cameraX += random_range(-global.cameraShake, global.cameraShake);
global.cameraY += random_range(-global.cameraShake, global.cameraShake);

if (global.cameraShake > 0){
	global.cameraShake -= 0.2;
	if (global.cameraShake < 0) global.cameraShake = 0;
}

if (room == rm_title)
{	
	//move the camera upward on the title screen
	if (global.shouldtitlescroll = true)
	{
		if (global.cameraY > 0){
			global.cameraY -= 5;
		}
		if (global.cameraY <= 0){
			global.cameraY = 0
			global.shouldtitlescroll = false
		}
	}
	
	//move camera to the settings section on the title screen
	if (global.settingspressed = true)
	{
		if (global.cameraX < 645){
			global.cameraX += 15;
		}
		if (global.cameraX >= 645){
			global.cameraX = 645
			global.settingspressed = false
		}
	}

	//move camera to the extras section on the title screen
	if (global.extraspressed = true)
	{
		if (global.cameraY < 512){
			global.cameraY += 15;
		}
		if (global.cameraY >= 512){
			global.cameraY = 512
			global.extraspressed = false
		}
	}
}
else {global.titlecameraismoving = true}

//set camera position
camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);