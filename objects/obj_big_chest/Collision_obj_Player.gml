selectable = true

with other
{
	if pickup_pressed and !global.pause
	{
		with other {
			var rando = random(100)
			var xx = x + 8
			var yy = y + 8
			if rando < 35
			{
				with instance_create_depth(xx,yy,5, obj_weapon)
				{
					stats = ["spear",45,45,15,false]	
				}
			} else if rando < 45
			{
				with instance_create_depth(xx,yy,5,obj_weapon)
				{
					stats = ["sword",45,45,20,false]	
				}
			} else if rando < 65
			{
				instance_create_depth(xx,yy,5,obj_heart_container)
			} else 
			{
				with instance_create_depth(xx,yy,5,obj_weapon)
				{
					stats = ["sword",45,45,15,false]	
				}
			}
		
			part_particles_create(global.part_sys_fire,xx,yy,global.part_enemy_boom,20)
			
		}
		var wall = instance_nearest(x,y,obj_wall_generic)
		instance_destroy(wall)
		instance_destroy(other)
	}
	
}