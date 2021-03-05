for (var i = 0; i < 20; i ++)
{
	part_particles_create(global.part_sys_fire, x + random(16), y + random(16), global.part_barrel, 1)
	if random(100) < 5
	{
		part_particles_create(global.part_sys_fire, x + random(16), y + random(16), global.part_dust, 1)
	}
}

var rand_check = random(100)

if rand_check < 5
{
	instance_create_depth(x+8,y+8,5,obj_heart)
} else if rand_check < 17.5
{
	with instance_create_depth(x+8,y+8,5,obj_coin)
	{
		var worth_check = random(100)
		if worth_check < 50
		{
			worth = 1	
		} else if worth_check < 85
		{
			worth = 5
		} else {
			worth = 20	
		}
	}
} else if rand_check < 30
{
	instance_create_depth(x + 8,y + 8,5,obj_arrow_pickup)	
}