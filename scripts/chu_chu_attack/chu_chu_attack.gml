// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function chu_chu_attack(){
	hsp = lengthdir_x(1,dir)
	vsp = lengthdir_y(1,dir)
	enemy_collision()
	if wind_up_timer > 48
	{
		state = "active"
	}
	anim_timer = 0
	anim_frame = 2
	wind_up_timer ++

}