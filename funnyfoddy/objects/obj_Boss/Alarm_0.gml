/// @desc

//creating spikes
if (move == 0){
	
	var i = angletarget
	
	if (i >= -225){
		i -= 45
		angletarget = i
		createSpikes(spikedir,spikespd)
		if (spikedir == 0) spikedir = 1
		else if (spikedir == 1) spikedir = 0
	}else if(i >= -270){
		image_angle = 90
		angletarget = 90
		
		move = 1
	}
	
	alarm[0] = spiketimer
}