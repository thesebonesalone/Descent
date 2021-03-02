// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_left_to_room(xx,yy){
	layer_set_target_room(global.tester)
	
	tilemap_set(global.tm_wall,0,(xx * 16), 7 + (yy * 16))
	remove_from_wall_list((xx * 16), 7 + (yy * 16))
	tilemap_set(global.tm_wall,0, (xx * 16), 8 + (yy * 16))
	remove_from_wall_list((xx * 16), 8 + (yy * 16))
	tilemap_set(global.tm_wall,85, (xx * 16), 6 + (yy * 16))
	tilemap_set(global.tm_wall,65, (xx * 16), 9 + (yy * 16))

}