// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_power_cooldowns(){
	
	for (i = 0; i< 4; i ++)
	{
		if power_array[i] != pointer_null
		{
			power_array[i][0] --
		}
	}
}