		persistent = false
		audio_play_sound(theme,1,true)
		// set up camera in room
		view_set_visible(view_camera[0], true)
		view_enabled = true
		view_set_hport(view_camera[0], 270)
		view_set_wport(view_camera[0], 480)
		//set background to tile
	
		//create starter instances
		with instance_create_depth(room_start_x ,room_start_y,0, obj_Player)
		{
			other.player = self
			persistent = true
		}
		
		var bg_lay_id = layer_get_id("Background")
		bg_id = layer_background_get_id(bg_lay_id)
	
		for (var i = 0; i < array_length(global.wall_list); i ++)
		{
			var xx = global.wall_list[i][0] * 16
			var yy = global.wall_list[i][1] * 16
			instance_create_layer(xx,yy,"Instances", obj_wall_generic)	
		}
	
		var objects = ["tree", "grass", "barrel", "campfire","water","metal_box","enemy","perm_pressure_switch","temp_pressure_switch","toggle_switch","bollard", "bollard_opposite", "small_chest","big_chest","magnesis","stasis","bombs","cryonis", "merchant","big_enemy_1","big_enemy_2","crab_boss_door", "hint_marker", "big_puzzle"]
		for (var i = 0; i < array_length(global.object_list); i ++)
		{
			var xx = global.object_list[i][1] * 16
			var yy = global.object_list[i][2] * 16
			var what_is = objects[global.object_list[i][0] - 1]
			switch what_is
			{
				case "tree":
				instance_create_depth(xx,yy,5,obj_tree_1)
				break;
				case "grass":
				instance_create_depth(xx,yy,5,obj_grass_1)
				break;
				case "barrel":
				instance_create_depth(xx,yy,5,obj_barrel)
				break;
				case "campfire":
				instance_create_depth(xx,yy,5,obj_camp_fire)
				break;
				case "water":
				instance_create_depth(xx,yy,5,obj_water)
				break;
				case "metal_box":
				instance_create_depth(xx,yy,5,obj_metal_box)
				break;
				case "enemy":
				handle_enemy_spawns(xx,yy)
				break;
				case "perm_pressure_switch":
				create_perm_pressure_switch(xx,yy);
				break;
				case "temp_pressure_switch":
				instance_create_depth(xx,yy,5,obj_temp_pressure_switch)
				break;
				case "toggle_switch":
				instance_create_depth(xx,yy,5,obj_toggle_switch)
				break;
				case "bollard":
				create_bollard(xx,yy);
				break;
				case "bollard_opposite":
				instance_create_depth(xx,yy,5,obj_bollard_opposite);
				break;
				case "magnesis":
				instance_create_depth(xx,yy,5,obj_totem_magnesis);
				break;
				case "stasis":
				instance_create_depth(xx,yy,5,obj_totem_stasis);
				break;
				case "bombs":
				instance_create_depth(xx,yy,5,obj_totem_bomb);
				break;
				case "cryonis":
				instance_create_depth(xx,yy,5,obj_totem_cryonis);
				break;
				case "merchant":
				instance_create_depth(xx,yy,5,obj_slime_merchant);
				break;
				case "small_chest":
				instance_create_depth(xx,yy,5,obj_small_chest);
				break;
				case "big_chest":
				instance_create_depth(xx,yy,5,obj_big_chest);
				break;
				case "crab_boss_door":
				with instance_create_depth(xx,yy,5,obj_door)
				{
					room_select = crab_rangroom
					image_xscale = 2
					image_yscale = 1.2
				}
				break;
				case "hint_marker":
				instance_create_depth(xx,yy,5,obj_puzzle_hint)
				break;
				case "big_puzzle":
				instance_create_depth(xx,yy,5,obj_puzzle_input)
				break;
			}
		}

