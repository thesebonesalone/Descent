room_starter = instance_nearest(x,y,obj_room_starter)

if instance_exists(room_starter)
{
	x = room_starter.x
	y = room_starter.y
	
	var cam = instance_nearest(x,y,obj_camera)
	if !instance_exists(cam)
	{
		with instance_create_depth(x,y,0,obj_camera)
		{
			target = other
		}
	}
}