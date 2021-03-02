bomb_timer = 0
anim_frame = 0

		var list = ds_list_create()
			var num =  collision_circle_list(x,y,32,obj_enemy_generic,false,true,list,false)
			for (var j = 0; j < num ; j ++)
			{
				with list[| j]
				{
					if hit_cooldown <= 0
					{
						state = "hit"
						attack_x = other.x
						attack_y = other.y
						hit_cooldown = 16
						hp -= 30 
					}
				}
			}
			ds_list_empty(list)
			num = collision_circle_list(x,y,32,obj_barrel,false,true, list, false)
			for (var j = 0; j < num; j ++)
			{
				with list[| j]
				{
					if shake_count <= 0
					{
						hp -= 30
						shake_count = 8
					}
				}
			}
			ds_list_empty(list)
			num = collision_circle_list(x,y, 32,obj_grass_1,false,true, list, false)
			for (var j = 0; j < num; j++)
			{
				with list[| j]
				{
					instance_destroy(self)
				}
			}
			ds_list_empty(list)
			with collision_circle(x,y, 32,obj_toggle_switch,false, true)
			{
				
					show_debug_message("BLIP")
					if cooldown < 0
					{
						cooldown = 2
						if pressed = true
						{
							pressed = false
						} else {
							pressed = true
						}
					}
			}
		 ds_list_destroy(list)