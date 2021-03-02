// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_fire(){
	hp -= 1
	
	//draw fire particles
	if random(10) < 3
	{
		part_particles_create(global.part_sys_fire,offx + floor(random(w)),offy + floor(random(h)),global.part_fire,1)
		part_particles_create(global.part_sys_fire,offx + floor(random(w)),offy + floor(random(h)),global.part_smoke,1)
	}
	// collision circle determining whether items can be on fire
	var list = ds_list_create()
	var num = collision_circle_list(offx + w/2,offy + h/2,rad + w/2,obj_wall_generic,false,true, list, false)
	for (var i = 0; i < num; i ++)
	{
		with list[| i]
		{
			if flammable and random(100) < 0.5
			{
				state = "on_fire"
			}
		}
	}
	ds_list_clear(list)
	var num = collision_circle_list(offx + w/2,offy +h/2,rad + w/2,obj_grass_1,false,true, list, false)
	for (var i = 0; i < num; i ++)
	{
		with list[| i]
		{
			if flammable and random(100) < 0.5
			{
				state = "on_fire"
			}
		}
	}
	ds_list_clear(list)
	var num = collision_circle_list(offx + w/2,offy +h/2,rad + w/2,obj_enemy_generic,false,true, list, false)
	for (var i = 0; i < num; i ++)
	{
		with list[| i]
		{
			if random(100) < 0.5
			{
				state = "on_fire"
			}
		}
	}
	
	
	ds_list_destroy(list)
	
	
}