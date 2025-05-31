/// @desc draw the slider

if (room = rm_title) || (room = rm_title_termination) {

	draw_self();
	draw_sprite_part(sprite_index, 1, 0, 0, sprite_width*value, sprite_height, x, y - sprite_get_yoffset(sprite_index))
	draw_sprite(_23SliderCircle, 0, x + sprite_width*value, y);

} else {
	
	//it's too late rn but when you can you need to make it so that the circle is _23SliderCircleselected when held
	
	draw_self();
	draw_sprite_part(sprite_index, 1, 0, 0, sprite_width*value, sprite_height, x, y - sprite_get_yoffset(sprite_index))
	draw_sprite(_23SliderCircle, 0, x + sprite_width*value, y);
	
}