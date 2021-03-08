start = keyboard_check_pressed(vk_anykey)
if gamepad_is_connected(0)
{
	start = start || gamepad_button_check_pressed(0,gp_start) || gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(0,gp_face3) || gamepad_button_check_pressed(0,gp_face4)
}

if start
{
	room_goto(start_room_screen)
}