// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_powers(){

	if dpad_up_pressed or dpad_down_pressed
	{
		var has_powers = false
		for (var i = 0; i < 3; i ++)
		{
			if power_array[i] != pointer_null
			{
				has_powers = true
			}
		}
		if has_powers
		{
			var change_dir = (dpad_up_pressed * 1) - (dpad_down_pressed * 1)
			do {
				power_pointer += change_dir
				if power_pointer = 4
				{
					power_pointer = 0
				}
				if power_pointer = -1
				{
					power_pointer = 3
				}
			} until power_array[power_pointer] != pointer_null
		}
	}
}