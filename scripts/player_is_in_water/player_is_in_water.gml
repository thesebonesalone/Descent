// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_is_in_water(){

	if place_meeting(x,y,obj_water)
	{
		with collision_point(x,y,obj_water,false,true)
		{
			if frozen_timer <= 0 and other.state != "swimming"
			{
				other.swim_frame = 0
				other.state = "swimming"
				
			} else if other.state = "swimming" and frozen_timer > 0
			{
				other.state = "walk"
			}
		}
	} else if state = "swimming" {
		state = "walk"
	}
}