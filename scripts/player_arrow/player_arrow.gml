// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_arrow(){


	if !arrow_hold
	{
		state = "walk"
		if arrows > 0
		{
			with instance_create_depth(x,y,5,obj_arrow) 
			{
				speed = 6
				direction = other.aim_angle
				image_angle = direction
			}
			arrows --
		}
	}
	dir = aim_angle
	
}