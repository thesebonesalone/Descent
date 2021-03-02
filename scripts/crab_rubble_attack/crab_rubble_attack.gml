// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crab_rubble_attack(){
	if frame > 60 and frame % 20 = 0
	{
		var player = instance_nearest(x,y,obj_Player)
		instance_create_depth(player.x - 64 + random(128), player.y - 64 + random(128),5,obj_sand_explosion)
	}
	frame ++
	if frame % 10 = 0
	{
		shake_it(10)
	}
	if frame = 360
	{
		state = "emerge"
	}
}