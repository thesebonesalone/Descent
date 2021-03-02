// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_bokoblins_2(xx,yy){
	
	instance_create_depth(xx, yy - 36, 5, obj_bokoblin_arrow)
	
	instance_create_depth(xx, yy + 36, 5, obj_bokoblin_arrow)
	
	
	instance_create_depth(xx + 32, yy - 32, 5, obj_bokoblin_blue)
	instance_create_depth(xx + 32, yy + 32, 5, obj_bokoblin_blue)

}