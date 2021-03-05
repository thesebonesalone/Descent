// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_enemy_spawns(xx,yy){
	show_debug_message(xx)
	var standardized_x = floor((xx / 256)) * 256 + 128
	var standardized_y = floor((yy/ 256)) * 256 + 128
	var spawner = floor(random(4))
	
	switch spawner
	{
		case 0:
			spawn_bokoblins_1(standardized_x,standardized_y)
		break;
		case 1:
			spawn_bokoblins_2(standardized_x,standardized_y)
		break;
		case 2:
			spawn_chu_chu_blues(standardized_x, standardized_y)
		break;
		case 3:
			spawn_crabs(standardized_x, standardized_y)
		break;
	}
}