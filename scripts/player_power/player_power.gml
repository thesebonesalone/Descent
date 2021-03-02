// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_power(){
	if frame > 10
	{
		state = "walk"
	}
	if frame = 0
	{
		if power_array[power_pointer] != pointer_null
		{
			switch power_pointer
			{
				case 1:
					player_stasis_use()
				break;
				case 2:
					player_cryonis_use()
				break;
				case 3:
					player_bomb_use()
				break;
				case 0:
					player_magnesis_use()
				break;
			}
		}
	}
	
	frame ++
}