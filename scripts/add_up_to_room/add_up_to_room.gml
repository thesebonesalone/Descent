// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_up_to_room(xx,yy){
	layer_set_target_room(global.tester)
	
	tilemap_set(global.tm_wall,0,7 +(xx * 16),(yy * 16))
	remove_from_wall_list(7 + (xx * 16), (yy * 16))
	tilemap_set(global.tm_wall,0,8 + (xx * 16), (yy * 16))
	remove_from_wall_list(8 + (xx * 16), (yy * 16))
	tilemap_set(global.tm_wall,85, 6 + (xx * 16), (yy * 16))
	tilemap_set(global.tm_wall,84, 9 + (xx * 16), (yy * 16))
}