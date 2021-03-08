start = keyboard_check_pressed(vk_anykey)
if gamepad_is_connected(0)
{
	start = start || gamepad_button_check_pressed(0,gp_start) || gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(0,gp_face3) || gamepad_button_check_pressed(0,gp_face4)
}

if start and !instance_exists(obj_fade_transition)
{
	with instance_create_depth(0,0,0,obj_fade_transition)
	{
		trans_room = title_screen	
	}
}