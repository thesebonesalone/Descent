// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crab_claw_attack(){
	var player = instance_nearest(x,y,obj_Player)
	x = 0
	y = 0
	var px = player.x
	var py = player.y
	if frame % 200 = 0
	{
		instance_create_depth(px - 24,py,5,obj_crab_claw_left)
		instance_create_depth(px + 24,py,5,obj_crab_claw_right)
	}
	frame ++
	if frame = 600
	{
		state = "emerge"
		frame = 0
		x = player.x
		y = player.y
	}
}