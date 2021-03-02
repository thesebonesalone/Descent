// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_down_to_room(xx,yy){
	layer_set_target_room(global.tester)
	
	tilemap_set(global.tm_wall,0,7 +(xx * 16),15 + (yy * 16))
	remove_from_wall_list(7 + (xx * 16),15 + (yy * 16))
	tilemap_set(global.tm_wall,0,8 + (xx * 16),15 + (yy * 16))
	remove_from_wall_list(8 + (xx * 16),15 + (yy * 16))
	tilemap_set(global.tm_wall,0,7 +(xx * 16),14 + (yy * 16))
	remove_from_wall_list(7 + (xx * 16),14 + (yy * 16))
	tilemap_set(global.tm_wall,0,8 + (xx * 16),14 + (yy * 16))
	remove_from_wall_list(8 + (xx * 16),14 + (yy * 16))
	tilemap_set(global.tm_wall,65, 6 + (xx * 16), 14 + (yy * 16))
	tilemap_set(global.tm_wall,64, 9 + (xx * 16), 14 + (yy * 16))
	tilemap_set(global.tm_wall,81, 6 + (xx * 16), 15 + (yy * 16))
	tilemap_set(global.tm_wall,83, 9 + (xx * 16), 15 + (yy * 16))

}