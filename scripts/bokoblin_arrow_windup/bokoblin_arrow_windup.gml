// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bokoblin_arrow_windup(){
	var player = instance_nearest(x,y,obj_Player)
	
	if !instance_exists(player)
	{
		player = self
	}
	var px = player.x
	var py = player.y
	
	
	wind_up_timer ++
	if wind_up_timer > wind_up_time
	{
		state = "attack"
		show_debug_message("attacked")
		
		with instance_create_depth(x,y,5, obj_arrow_enemy)
		{
			speed = 6
			
			direction = other.dir
			image_angle = direction
		}
		wind_up_timer = 0
	}

}