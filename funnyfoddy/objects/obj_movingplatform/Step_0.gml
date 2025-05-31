/// @desc

if (platformtarget < x) {
	x -= platformspd
}

if (platformtarget > x) {
	x += platformspd
}

if (x == platformtarget) {
	
	if (platformtarget == PointA) {
		
		platformtarget = PointB
		
	}else if (platformtarget == PointB) {
		
		platformtarget = PointA
		
	}
	
}