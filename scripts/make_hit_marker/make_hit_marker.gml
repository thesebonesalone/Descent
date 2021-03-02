// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function make_hit_marker(object_from, object_hit){

	var x1 = object_from.x
	var y1 = object_from.y
	
	var o2_dif = object_hit.sprite_width / 2
	x2 = object_hit.x
	y2 = object_hit.y
	var dir_other = point_direction(x2,y2,x1,y1)
	
	
	var dist = point_distance(x1,y1,x2 + lengthdir_x(o2_dif, dir_other),y2 + lengthdir_x(o2_dif, dir_other))
	
	dir_object =  point_direction(x1,y1,x2,y2)
	x2 = x1 + lengthdir_x(dist, dir_object)
	y2 = y1 + lengthdir_y(dist, dir_object)
	
	with instance_create_depth(x2,y2,-10,obj_hit_marker)
	{
		direction = other.dir_object
		dir = direction
		speed = 0.5
	}
	shake_it(8)

}