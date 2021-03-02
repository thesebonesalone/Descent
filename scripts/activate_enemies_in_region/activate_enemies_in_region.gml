// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activate_enemies_in_region(){

	var list = ds_list_create()
	var num = collision_circle_list(x,y,128,obj_enemy_generic,false,true,list,false)
	for (var i = 0; i < num; i ++)
	{
		with list[| i]
		{
			if state = "dormant"
			{
				state = "active"
			}
		}
	}
}