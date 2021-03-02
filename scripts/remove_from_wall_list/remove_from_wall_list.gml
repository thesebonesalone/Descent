// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remove_from_wall_list(xx,yy){
	
	for (var ii = 0; ii < array_length(global.wall_list); ii ++)
	{
		if global.wall_list[ii][0] = xx and global.wall_list[ii][1] = yy
		{
			global.wall_list[ii] = [-16,-16]
			show_debug_message("removing wall")
		}
	}

}