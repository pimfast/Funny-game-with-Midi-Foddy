/// @desc
draw_clear(c_black);

// 3D projections require a view and projection matrix
var threedeecamera = camera_get_active();

var xfrom = obj_3Dplayer.x;
var yfrom = obj_3Dplayer.y;
var zfrom = obj_3Dplayer.z;
var xto = xfrom + dcos(obj_3Dplayer.look_dir);
var yto = yfrom - dsin(obj_3Dplayer.look_dir);
var zto = zfrom - dsin(obj_3Dplayer.look_pitch);


camera_set_view_mat(threedeecamera, matrix_build_lookat(xfrom, yfrom, zfrom, xto, yto, zto, 0, 0, 1));
camera_set_proj_mat(threedeecamera, matrix_build_projection_perspective_fov(60, window_get_width() / window_get_height(), 1, 32000));
camera_apply(threedeecamera);

vertex_submit(vbuffer, pr_trianglelist, -1);