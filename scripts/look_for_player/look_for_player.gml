// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function look_for_player(){


	var player = instance_nearest(x,y,obj_Player)
	if instance_exists(player)
	{
		var x2 = x + lengthdir_x(view_distance,dir - 30)
		var y2 = y + lengthdir_y(view_distance, dir -30)
		var x3 = x + lengthdir_x(view_distance, dir + 30)
		var y3 = y + lengthdir_y(view_distance, dir + 30)
		if point_in_triangle(player.x,player.y,x,y,x2,y2,x3,y3)
		{
			show_debug_message("Player Seen")
			state = "active"
			activate_enemies_in_region()
		}
	}
}