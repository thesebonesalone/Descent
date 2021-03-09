congratulate = keyboard_check(ord("F"))

start = keyboard_check_pressed(vk_anykey)
if gamepad_is_connected(0)
{
	congratulate = congratulate || gamepad_button_check(0,gp_face2)
	start = start || gamepad_button_check_pressed(0,gp_start) || gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(0,gp_face3) || gamepad_button_check_pressed(0,gp_face4)
}


if congratulate
{
	part_particles_create(confetti_sys,random(room_width),random(room_height),confetti,60)	
	
}

if start and !congratulate
{
	with instance_create_depth(0,0,0,obj_fade_transition)
	{
		trans_room = start_room_screen	
	}
	instance_destroy(self)
	
}

hover = false
window_set_cursor(cr_default)
if collision_point(mouse_x, mouse_y, obj_congrats_page, false, false)
{
	hover = true
	window_set_cursor(cr_handpoint)
}

if hover and mouse_check_button_pressed(mb_left)
{
	url_open("https://duikhead2.medium.com/roguelike-level-generation-in-game-maker-studio-2-ec694c7298c4")	
}