// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_hit(){
	if hit_cooldown <= 0
	{
		state = "active"
	}
	var atk_dir = point_direction(attack_x,attack_y,x,y)
	hsp = lengthdir_x(2,atk_dir)
	vsp = lengthdir_y(2,atk_dir)
	
	enemy_collision()
	
	
}