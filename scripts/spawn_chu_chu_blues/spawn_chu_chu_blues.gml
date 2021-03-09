// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_chu_chu_blues(xx,yy){
	
		var map_x = floor(xx/256) * 16
	var map_y = floor(yy/256) * 16
	var spawns = []
	while array_length(spawns) < 4
	{
		var x2 = floor(random(16))
		var y2 = floor(random(16))
		
		if !collision_point((map_x + x2) * 16, (map_y + y2) * 16, obj_wall_generic,false,true) and tilemap_get(global.tm_ground,(map_x + x2), (map_y + y2))
		{
			array_push(spawns, [(map_x + x2) * 16 + 8, (map_y + y2) * 16 + 8])	
		}
		
	}
	for (var i = 0; i < array_length(spawns); i ++)
	{
			instance_create_depth(spawns[i][0], spawns[i][1], 5, obj_chu_chu_blue)
		
	}

}