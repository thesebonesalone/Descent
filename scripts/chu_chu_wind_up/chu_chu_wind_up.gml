// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function chu_chu_wind_up(){
	
	var player = instance_nearest(x,y,obj_Player)
	if !instance_exists(player)
	{
		player = self
	}
	var px = player.x
	var py = player.y
	
	if point_distance(x,y,px,py) > 24
	{
		go_to_point(px,py,chase_speed/2)	
	}
	wind_up_timer ++
	if wind_up_timer > wind_up_time
	{
		state = "attack"
		dir = point_direction(x,y,px,py)
		wind_up_timer = 0
	}
	anim_timer += 4

}