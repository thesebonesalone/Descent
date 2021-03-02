// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function chu_chu_dormant(){

	if collision_circle(x,y,64,obj_Player,false,true)
	{
		state = "emerge"
		activate_enemies_in_region()
	}

}