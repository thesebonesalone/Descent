part_particles_create(global.part_sys_fire,x,y,global.part_enemy_boom,20)

var rand_check = random(100)
if rand_check < 5
{
	instance_create_depth(x,y,5,obj_heart)
} else if rand_check < 70
{
	instance_create_depth(x,y,5, obj_arrow_pickup)
} else
{
	with instance_create_depth(x,y,5, obj_coin)
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
}