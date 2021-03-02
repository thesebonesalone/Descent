// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_bomb_use(){
	var placed = power_array[power_pointer][2]
	if placed
	{
		show_debug_message("Explode?")
		with instance_nearest(x,y,obj_bomb)
		{
			instance_destroy(self)	
		}
		power_array[power_pointer][2] = false
	} else {
		
		instance_create_depth(x,y,5,obj_bomb)
		power_array[power_pointer][2] = true
	}
}