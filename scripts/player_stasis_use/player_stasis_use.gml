// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_stasis_use(){
	
	var list = ds_list_create()
	var num = collision_circle_list(x,y,64,obj_enemy_generic,false,true,list,false)
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
	var num = collision_circle_list(x,y,64,obj_barrel,false,true,list,false)
	for (var i = 0; i < num; i++)
	{
		with list[| i]
		{
			if state != "on_fire"
			{
				state = "stasis"
				stasis_hp = hp
				stasis_timer = 240
			}
			
		}
	}

}