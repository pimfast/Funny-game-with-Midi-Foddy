/// @desc

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

#region vertex format setup
// vertex format: data must go into vertex buffers in the order defi... something something
vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format = vertex_format_end();
#endregion

#region create the grid
vbuffer = vertex_create_buffer();
vertex_begin(vbuffer, vertex_format);

//create a checkerboard pattern on the floor
var s = 64;
for (var i = 0; i < room_width; i += s) {
	for (var j = 0; j < room_height; j += s) {
		if ((i % (s * 2) == 0 && j % (s * 2) == 0) || (i % (s * 2) > 0 && j % (s * 2) > 0)) {
			var color = make_color_rgb(32,67,129);
		} else {
			var color = make_color_rgb(40,40,39);
		}
		
		vertex_add_point(vbuffer, i, j, 100,				0, 0, 1,		0, 0,		color, 1);
		vertex_add_point(vbuffer, i + s, j, 100,			0, 0, 1,		1, 0,		color, 1);
		vertex_add_point(vbuffer, i + s, j + s, 100,		0, 0, 1,		1, 1,		color, 1);

		vertex_add_point(vbuffer, i + s, j + s, 100,		0, 0, 1,		1, 1,		color, 1);
		vertex_add_point(vbuffer, i, j + s, 100,			0, 0, 1,		0, 1,		color, 1);
		vertex_add_point(vbuffer, i, j, 100,				0, 0, 1,		0, 0,		color, 1);
	}
}

vertex_end(vbuffer);
#endregion

instance_create_depth(0, 0, 0, obj_3Dplayer)