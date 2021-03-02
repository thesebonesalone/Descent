// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bokoblin_active(){
	var player = instance_nearest(x,y,obj_Player)
	if !instance_exists(player)
	{
		player = self
	}
	var px = player.x
	var py = player.y
	wind_up_timer = 0
	if active_timer > 30
	{
		
		if point_distance(x,y,px,py) > 48
		{
			go_to_point(px,py, chase_speed)
		} else {
			circle_point(px, py, chase_speed)
			if random(100) < 0.5 
			{
				state = "wind_up"
				wind_up_timer = 0
			}
		}
			
	}
	
	if point_distance(x,y,px,py) > 240
	{
		active_timer --
	} else {
		active_timer ++
	}
	if active_timer > 240
	{
		active_timer = 240
	}
	if active_timer < 0
	{
		if point_distance(x,y,px,py) > 360
		{
			x = start_x
			y = start_y
			state = "dormant"
		}
	}
}