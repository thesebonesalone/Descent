// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_weapons(){
	if (dpad_right_pressed)
	{
		weapon_fire = false
		var set = false
		while set == false
		{
			weapon_pointer ++
			if weapon_pointer >= array_length(weapon_array)
			{
				weapon_pointer = 0
			}
			if weapon_array[weapon_pointer] != pointer_null
			{
				set = true
			}
			
		}
	}
	if (dpad_left_pressed)
	{
		weapon_fire = false
		var set = false
		while set == false
		{
			weapon_pointer --
			if weapon_pointer < 0
			{
				weapon_pointer = array_length(weapon_array) - 1
			}
			if weapon_array[weapon_pointer] != pointer_null
			{
				set = true
			}
			
		}
	}


}