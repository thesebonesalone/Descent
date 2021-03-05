// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_crabs(xx,yy){
	
	instance_create_depth(xx - 48, yy - 48, 5, obj_crab_enemy)
	instance_create_depth(xx - 48, yy + 48, 5, obj_crab_enemy)
	instance_create_depth(xx + 48, yy + 48, 5, obj_crab_enemy)
	instance_create_depth(xx + 48, yy - 48, 5, obj_crab_enemy)

}