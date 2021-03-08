start = keyboard_check_pressed(vk_escape)
if gamepad_is_connected(0)
{
	start = start || gamepad_button_check_pressed(0,gp_start) || gamepad_button_check_pressed(0,gp_face2)
}

if start
{
	room_goto_previous()
}