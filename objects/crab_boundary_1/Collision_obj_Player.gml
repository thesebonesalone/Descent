if state = "inert"
{
	state = "first"
	camera = instance_nearest(x,y,obj_camera)
	with camera
	{
		other.y = target.y
		target = instance_nearest(x,y,crab_boundary_1)
	}
	
	x = 400
}

if state = "fourth" and x = 368 and y = 688
{
	state = "fifth"
	camera = instance_nearest(x,y,obj_camera)
	with camera
	{
		other.y = target.y
		other.x = target.x
		target = instance_nearest(x,y,crab_boundary_1)
	}
}