// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_right_to_room(xxx,yyy){
	layer_set_target_room(global.tester)
	
	tilemap_set(global.tm_wall,0,15 + (xxx * 16), 7 + (yyy * 16))
	remove_from_wall_list(15 + (xxx * 16), 7 + (yyy * 16))
	tilemap_set(global.tm_wall,0,15 + (xxx * 16), 8 + (yyy * 16))
	remove_from_wall_list(15 + (xxx * 16), 8 + (yyy * 16))
	tilemap_set(global.tm_wall,84, 15 + (xxx * 16), 6 + (yyy * 16))
	tilemap_set(global.tm_wall,64, 15 + (xxx * 16), 9 + (yyy * 16))

}