target = pointer_null
global.pause_frame = 0
view_camera[0] = camera_create()
var viewmat = matrix_build_lookat(480,270,-10,480,270,0,0,1,0)
var projmat = matrix_build_projection_ortho(480,270,1,32000)
//var viewmat = matrix_build_lookat(2048,2048,-10,2048,2048,0,0,1,0)
//var projmat = matrix_build_projection_ortho(2048,2048,1,32000)

camera_set_view_mat(view_camera[0],viewmat)
camera_set_proj_mat(view_camera[0],projmat)
camera_set_view_size(view_camera[0], 320,180)
//camera_set_view_size(view_camera[0], 2048,2048)
active_timer = 0
shake = 0
// create object list
//global.obj_list = ds_list_create()

show_debug_message("oi")