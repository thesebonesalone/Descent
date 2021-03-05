
function generate_area(){
	
	var lefts = 0
	var rights = 0
	var ups = 0
	var downs = 0
	var n_of_rooms = 0
	var shop = 1
	var treasure = 2
	var puzzles = 3
	var big_puzzle = false
	var hints = 0
	//generate room to add layers to
	global.tester = room_add()
	room_set_width(global.tester, 2048)
	room_set_height(global.tester, 2048)
	room_set_persistent(global.tester, false)
	layer_set_target_room(global.tester)
	//generate layers in room
	global.instance_layer = layer_create(0, "Instances")
	global.wall_layer = layer_create(100, "Wall_Layer")
	global.ground_decoration_layer = layer_create(200, "Ground_Decoration_Layer")
	global.ground_layer = layer_create(300, "Ground_Layer")
	global.background = layer_create(400, "Background")
	global.controller_layer = layer_create(500, "Controllers")
	var rw = 2048 / 16
	var rh = 2048 / 16
	global.tm_wall = layer_tilemap_create(global.wall_layer, 0,0,tile_overworld_grass,rw,rh)
	global.tm_ground_decoration = layer_tilemap_create(global.ground_decoration_layer, 0,0,tile_overworld_grass,rw,rh)
	global.tm_ground = layer_tilemap_create(global.ground_layer, 0,0,tile_overworld_grass,rw,rh)
	global.bg_layer = layer_background_create(global.background, spr_cloud_background)
	layer_background_htiled(global.bg_layer, true)
	layer_background_vtiled(global.bg_layer, true)
	// fill room with tiles
	global.wall_list = []
	for (var i = 0; i < rw; i ++ )
	{
		for (var j = 0; j < rh; j ++)
		{
			//show_debug_message(string(i) + ", " + string(j))
			tilemap_set(global.tm_ground, 22, i, j)
		}
	}
	
	
	
	for (var i = 0; i < (rw/16); i ++)
	{
		for (var j = 0; j < (rh/16); j ++)
		{
			var special_room = false
			// fill room with blocks
			var rooms = []
			var room_string = ""
			var is_room = false
			//create string denoting where the exits are
			if global.room_list[i][j][0]
			{
				lefts ++
				is_room = true
				room_string += "left"
			}
			if global.room_list[i][j][1]
			{
				ups ++
				is_room = true
				room_string += "up"
			}
			if global.room_list[i][j][2]
			{
				rights ++
				is_room = true
				room_string += "right"
			}
			if global.room_list[i][j][3]
			{
				downs ++
				is_room = true
				room_string += "down"
			}
			if is_room
			{
				n_of_rooms ++
			}
	
	
			// switch between all types of exits, brace yourself, this is gonna get long
			rooms = [grass_blank]
			switch room_string
			{
				case "left":
					rooms = [grass_left_1, grass_left_2, grass_left_3,grass_left_4,grass_left_5,grass_left_6]
				break;
				case "up":
					rooms = [grass_up_1, grass_up_2, grass_up_3, grass_up_4]
				break;
				case "down":
					rooms = [grass_down_1, grass_down_2, grass_down_3, grass_down_4, grass_down_5, grass_down_6]
				break;
				case "right":
					rooms = [grass_right_1, grass_right_2, grass_right_3, grass_right_4]
				break;
				case "updown":
					rooms = [grass_updown_1, grass_updown_2, grass_updown_3, grass_updown_4]
				break;
				case "leftright":
					rooms = [grass_leftright_1, grass_leftright_2, grass_leftright_3]
				break;
				case "leftup":
					rooms = [grass_leftup_1, grass_leftup_2, grass_leftup_3]
				break;
				case "leftdown":
					rooms = [grass_leftdown_1, grass_leftdown_2, grass_leftdown_3]
				break;
				case "upright":
					rooms = [grass_upright_1, grass_upright_2, grass_upright_3, grass_upright_4]
				break;
				case "rightdown":
					rooms = [grass_rightdown_1, grass_rightdown_2, grass_rightdown_3]
				break;
				case "leftupdown":
					rooms = [grass_leftupdown_1, grass_leftupdown_2, grass_leftupdown_3]
				break;
				case "leftrightdown":
					rooms = [grass_leftrightdown_1, grass_leftrightdown_2, grass_leftrightdown_3]
				break;
				case "leftupright":
					rooms = [grass_leftupright_1, grass_leftupright_2, grass_leftupright_3]
				break;
				case "uprightdown":
					rooms = [grass_uprightdown_1, grass_uprightdown_2, grass_uprightdown_3]
				break;
				case "leftuprightdown":
					rooms = [grass_leftuprightdown_1, grass_leftuprightdown_2, grass_leftuprightdown_3, grass_leftuprightdown_4]
				break;
				
			}
			
			
			
			
			if i = room_xx and j = room_yy
			{
				rooms = [grass_starter]
				special_room = true
			}
			
			if i = end_xx and j = end_yy
			{
				rooms = [grass_ender]
				special_room = true
			}
			if room_string != ""
			{
				if random(100) < 25 and !big_puzzle and !special_room
				{
					rooms = [grass_solution_room]
					special_room = true
					big_puzzle = true
				}
			
				if random(100) < 25 and hints < 3 and !special_room and big_puzzle
				{
					rooms = [grass_hint_room]
					special_room = true
					hints ++
				}
			
			
				if j < 6 and j > 2 and random(100) < 25 and shop > 0 and !special_room
				{
					rooms = [grass_shop]
					shop --
					special_room = true
					
				}
			}
			
			
			if macrotest != pointer_null
			{
				var macro_x = macrotest[0]
				var macro_y = macrotest[1]
				
				if i = macro_x
				{
					if j = macro_y
					{
						rooms = [macro_topleft]
						special_room = true
					}
					if j = macro_y + 1
					{
						rooms = [macro_bottomleft]
						special_room = true
					}
				}
				
				if i = macro_x + 1
				{
					if j = macro_y
					{
						rooms = [macro_topright]
						special_room = true
					}
					if j = macro_y + 1
					{
						rooms = [macro_bottomright]
						special_room = true
					}
				}
				
				
			}
			
			
			
			
			
			var rm_generic = room_duplicate(rooms[floor(random(array_length(rooms)))])
			var wall_tile = 0
			var decoration_tile = 0
			var ground_tile = 0
			var object_tile = 0
			layer_set_target_room(rm_generic)
			var wall_id = layer_get_id("Wall_Layer")
			var wall_tile_id = layer_tilemap_get_id(wall_id)
			
			var ground_id = layer_get_id("Ground_Layer")
			var ground_tile_id = layer_tilemap_get_id(ground_id)
			
			var decoration_id = layer_get_id("Ground_Decoration_Layer")
			var decoration_tile_id = layer_tilemap_get_id(decoration_id)
			
			var objects_id = layer_get_id("Objects_Layer")
			var objects_tile_id = layer_tilemap_get_id(objects_id)
			for (var parent_x = 0; parent_x < 16; parent_x ++)
			{
				for (var parent_y = 0; parent_y < 16; parent_y ++)
				{
					ground_tile = tilemap_get(ground_tile_id,parent_x,parent_y)
					wall_tile = tilemap_get(wall_tile_id,parent_x,parent_y)
					decoration_tile = tilemap_get(decoration_tile_id, parent_x, parent_y)
					object_tile = tilemap_get(objects_tile_id, parent_x, parent_y)
					if ground_tile < 0
					{
						ground_tile = 0
					}
					
					// add decoration to standard ground tiles
					if ground_tile = 22 and random(100) < 10 and object_tile = 0 and decoration_tile = 0
					{
						var choices = [31,12,32,52]
						decoration_tile = choices[floor(random(array_length(choices)))]
						
					}
					if ground_tile = 72
					{
						object_tile = 5
					}
					if object_tile > 0
					{
						var obj_index = array_length(global.object_list)
						global.object_list[obj_index] = [object_tile, parent_x + (i * 16), parent_y + (j * 16)]
					}
					
					// add decoration to dirt tiles
					if ground_tile = 27 and random(100) < 10 and object_tile = 0  and decoration_tile = 0
					{
						var choices = [11]
						decoration_tile = choices[floor(random(array_length(choices)))]
						
					}
					// add decoration to secondary grass tiles
					if ground_tile = 20 and random(100) < 10 and object_tile = 0  and decoration_tile = 0
					{
						var choices = [51,12,32,52]
						decoration_tile = choices[floor(random(array_length(choices)))]
						
					}
					
					if wall_tile <= 0
					{
						wall_tile = 0
					} else {
						var num = array_length(global.wall_list)
						global.wall_list[num] = [parent_x + (i * 16), parent_y + (j * 16)]
					}
					if decoration_tile < 0
					{
						decoration_tile = 0
					}
					layer_set_target_room(global.tester)
					tilemap_set(global.tm_ground, ground_tile, parent_x + (i * 16), parent_y + (j * 16))
					tilemap_set(global.tm_wall, wall_tile, parent_x + (i * 16), parent_y + (j * 16))
					tilemap_set(global.tm_ground_decoration, decoration_tile, parent_x + (i * 16), parent_y + (j * 16))
					layer_set_target_room(rm_generic)
				}
			}
			if special_room
			{
				if global.room_list[i][j][0]
				{
					add_left_to_room(i,j)
				}
				if global.room_list[i][j][1]
				{
					add_up_to_room(i,j)
				}
				if global.room_list[i][j][2]
				{
					add_right_to_room(i,j)
				}
				if global.room_list[i][j][3]
				{
					add_down_to_room(i,j)
				}
			}
			
		}
	}
	// begin adding instances
	layer_reset_target_room()
	room_goto(global.tester)
	
	
	
	
}