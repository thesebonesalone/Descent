// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crab_choose_attack(){

	if frame > 60
	{
		var ran = random(100)
		if ran < 20
		{
			frame = -1
			state = "claw_attack"
		} else if ran < 40
		{
			frame = -1
			state = "rubble_attack"
		}
	}
	
	
	frame ++
}