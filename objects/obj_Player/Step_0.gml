weapon_array[0][1] = weapon_array[0][2]
phase_set()
get_inputs()
if weapon_array[weapon_pointer][1] <= 0
		{
			weapon_array[weapon_pointer] = pointer_null
			dpad_right_pressed = true
			change_weapons()
			dpad_right_pressed = false
		}

if pause_press
{
	if !global.pause
	{
		global.pause = true
	} else {
		global.pause = false
	}
}
if !global.pause
{
	handle_power_cooldowns()
	handle_cooldowns()




	switch state {
		case "walk":
			player_walk()
			break;
		case "dodge":
			player_dodge()
			break;
		case "attacking":
			player_attack();
			break;
		case "power_use":
			player_power();
			break;
		case "swimming":
		weapon_fire = false;
			player_swimming();
			break;
		case "arrow":
			player_arrow();
			break;
	}

	hit_timer --
	with collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_perm_pressure_switch,false, true)
	{
		pressed = true
	}
}
	