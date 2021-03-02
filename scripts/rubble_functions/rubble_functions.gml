// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rubble_falling(){
	z -= 5
	frame ++
	if z = 0
	{
		frame = 0
		state = "explode"
	}

}

function rubble_explode(){
	if frame = 18
	{
		instance_destroy(self)
	}
	with instance_create_depth(x - 32, y- 32,5,obj_enemy_hurtbox)
	{
		image_xscale = 64
		image_yscale = 64
	}
	frame ++
}