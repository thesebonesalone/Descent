// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_cryonis_use(){
	
	var list = ds_list_create()
	
	for (var j = -30; j < 35; j += 10)
	{
		var x2 = x + lengthdir_x(64,dir - j)
		var y2 = y + lengthdir_y(64,dir - j)
		var num = collision_line_list(x,y,x2,y2,obj_enemy_generic,false,true,list,false)
		for (var i = 0; i < num; i++)
		{
			with list[| i]
			{
				if frozen = false
				{
					time_stopped = true
					stasis_timer = 240
				}
			
			}
		}
		ds_list_clear(list)
		var num = collision_line_list(x,y,x2,y2,obj_wall_generic,false,true,list,false)
		for (var i = 0; i < num; i++)
		{
			with list[| i]
			{
				if state = "on_fire"
				{
					state = "dormant"
				}
			
			}
		}
		ds_list_clear(list)
		var num = collision_line_list(x,y,x2,y2,obj_water,false,true,list,false)
		for (var i = 0; i < num; i++)
		{
			with list[| i]
			{
				frozen_timer = 480
			
			}
		}
	}

}