// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_magnesis_use(){
	
	var list = ds_list_create()
	var num = collision_circle_list(x,y,240,obj_enemy_generic,false,true,list,false)
	for (var i = 0; i < num; i ++)
	{
		with list[| i]
		{
			if weapon != pointer_null && weapon[4] == false
			{
				with instance_create_depth(x,y,5,obj_weapon)
				{
					stats = other.weapon
					spd = 6
					var player = instance_nearest(x,y,obj_Player)
					direction = point_direction(x,y,player.x,player.y)
				}
				weapon = pointer_null
				
			}
		}
	}
}
