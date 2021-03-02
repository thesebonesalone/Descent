// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_walk(){
	player_movement()
	//initiate Dodge if player is pressing a direction and dodge cooldown is complete
	if dodge_press and dodge_cooldown <= 0 and (up or down or left or right)
	{
		dodge_hsp = ((right * 1) - (left * 1)) * 6
		dodge_vsp = ((down * 1) - (up * 1)) * 6
		dodge_cooldown = 30
		frame = 0
		state = "dodge"
	}
	if attack_press and attack_cooldown <= 0
	{
			state = "attacking"
			frame = 0
			attack_cooldown = 2
	}
	if power_press and power_array[power_pointer] != pointer_null and power_array[power_pointer][0] <= 0
	{
			state = "power_use"
			frame = 0
			power_array[power_pointer][0] = power_array[power_pointer][1]
	}
	if arrow_hold
	{
		state = "arrow"
	}
	
	
	change_weapons()
	change_powers()
	
	with collision_rectangle(x-8,y-8,x+8,y+8,obj_weapon,false,true)
	{
		pickupable = true
		if other.pickup_pressed {
			with other
			{
				var stats = other.stats
				var empty_spot = false
				var len = array_length(weapon_array)
				for (var i= 0; i < len; i ++)
				{
					if weapon_array[i] = pointer_null
					{
						weapon_array[i] = stats
						i = len
						empty_spot = true
						instance_destroy(other)
					}
				}
				if !empty_spot and weapon_pointer != 0
				{
					other.stats = weapon_array[weapon_pointer]
					weapon_array[weapon_pointer] = stats
					
				}
			}	
		}
	}
	
}