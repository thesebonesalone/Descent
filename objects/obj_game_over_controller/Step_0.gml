any_key = keyboard_check_pressed(vk_anykey)
if gamepad_is_connected(0)
{
	any_key = any_key || gamepad_button_check_pressed(0, gp_face1) || gamepad_button_check_pressed(2, gp_face1) || gamepad_button_check_pressed(0, gp_start)
}

if any_key
{
	audio_stop_all()
	with instance_create_depth(x,y,5,obj_fade_transition_white)
	{
		trans_room = title_screen
	}
}