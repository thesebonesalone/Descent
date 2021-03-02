// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shake_it(times){
	var cam = instance_nearest(x,y,obj_camera)
	with cam
	{
		shake = times
	}

}