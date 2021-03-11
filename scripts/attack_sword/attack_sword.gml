function attack_sword(){

    did_hit = false
	if frame > 16
	{
		state = "walk"
	}
	
	if frame = 4
	{
		play_slash_sounds()
		var list = ds_list_create()
		with obj_enemy_generic
			{
				var x1 = other.x
				var y1 = other.y
				if hit_by_swing(35, 30, x1,y1,other.dir,self)
				{
					if hit_cooldown <= 0
					{
						activate_enemies_in_region()
						make_hit_marker(other,self)
						other.did_hit = true
						state = "hit"
						attack_x = other.x
						attack_y = other.y
						hit_cooldown = 16
						hp -= other.weapon_array[other.weapon_pointer][3] * (1 + 2 * (state = "dormant")) 
					}
				}
				
			}
		
		
		for ( var i = -60; i < 65; i += 5) {
			
			//reworked slash detection, might need to add more points for enemy check, will decide after feel test
			
			
			
			with collision_line(x,y,x + lengthdir_x(26,dir + i), y + lengthdir_y(26, dir + i),obj_barrel,false,true)
			{
				if shake_count <= 0
				{
					other.did_hit = true
					hp -= other.weapon_array[other.weapon_pointer][3] * 5
					shake_count = 8
				}
			}
			with collision_line(x,y,x + lengthdir_x(26,dir + i), y + lengthdir_y(26, dir + i),obj_grass_1,false,true)
			{
				instance_destroy(self)
			}
			with collision_line(x,y,x + lengthdir_x(26,dir + i), y + lengthdir_y(26, dir + i),obj_toggle_switch,false,true)
			{
				if cooldown < 0
				{
					other.did_hit = true
					cooldown = 2
					show_debug_message("Heyo")
					if pressed = true
					{
						pressed = false
					} else {
						pressed = true
					}
				}
			}
		}
		ds_list_destroy(list)
	}
	if did_hit
	{
		weapon_array[weapon_pointer][1] = weapon_array[weapon_pointer][1] - 1
		
	}
}