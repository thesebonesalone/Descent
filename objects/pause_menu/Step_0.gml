up = keyboard_check_pressed(ord("W"))
down = keyboard_check_pressed(ord("S"))
select = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("E"))
escape = keyboard_check_pressed(vk_escape)

if gamepad_is_connected(0)
{
	up = up || gamepad_button_check_pressed(0,gp_padu)
	down = down || gamepad_button_check_pressed(0,gp_padd)
	
	select = select || gamepad_button_check_pressed(0, gp_face1)
	escape = escape || gamepad_button_check_pressed(0, gp_start) || gamepad_button_check_pressed(0, gp_face2)
	
}

cur_y += (down) - (up)

if cur_y > 2
{
	cur_y = 0
}

if cur_y < 0
{
	cur_y = 2	
}

if select
{
	if cur_y = 0
	{
		instance_destroy(self)
	}
	if cur_y = 1
	{
		with instance_nearest(x,y,obj_Player)
		{
			persistent = false	
		}
		audio_stop_all()
		room_goto(title_screen)
	}
	if cur_y = 2
	{
		game_end()	
	}
}
if escape
{
	instance_destroy(self)
}