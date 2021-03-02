// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_chu_chu_blues(xx,yy){
	
	instance_create_depth(xx, yy - 36, 5, obj_chu_chu_blue)
	instance_create_depth(xx - 36, yy, 5, obj_chu_chu_blue)
	instance_create_depth(xx + 36, yy, 5, obj_chu_chu_blue)
	instance_create_depth(xx, yy + 36, 5, obj_chu_chu_blue)

}