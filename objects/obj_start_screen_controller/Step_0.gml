
if !select
{
	select = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))
	up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)
	down = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)

	if gamepad_is_connected(0)
	{
		select = select || gamepad_button_check_pressed(0,gp_start) || gamepad_button_check_pressed(0,gp_face1)
		up = up || gamepad_button_check_pressed(0,gp_padu)
		down = down || gamepad_button_check_pressed(0,gp_padd)
	}


cur_y += down - up
if cur_y < 0
{
	cur_y = 3
}
if cur_y > 3
{
	cur_y = 0
}

//add sound to play if up or down




	if select
	{
		if cur_y = 0 
		{
			audio_stop_all()
			audio_play_sound(ogg_clack,1,false)
			with instance_create_depth(0,0,0,obj_fade_transition)
			{
				trans_room = intro_room	
			}
		}
		if cur_y = 1
		{
			room_goto(controls)
		}
		if cur_y = 2
		{
			room_goto(about_page)
		}
		if cur_y = 3
		{
			game_end()
		}
	}
}
