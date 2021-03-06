if !global.pause
{
	hit_cooldown --

	offx = x - sprite_get_xoffset(sprite_index)
	offy = y - sprite_get_yoffset(sprite_index)

	if hit_cooldown > 0
	{
		show_debug_message(hit_cooldown)
	}
	if !time_stopped
	{
		switch state
		{
			case "hit":
				enemy_hit()
				break;
			case "on_fire":
				enemy_fire()
				break;
			case "dormant":
				bokoblin_neutral()
				break;
			case "active":
				if weapon != pointer_null
				{
					bokoblin_active()
				} else
				{
					bokoblin_flee()
				}
				break;
			case "go_to_weapon":
				enemy_go_to_weapon()
				break;
			case "wind_up":
				enemy_windup()
				break;
			case "attack":
				bokoblin_attack()
				break;
		
		}
	} else {
		stasis_timer --
		if stasis_timer < 0
		{
			time_stopped = false
		}
	}

	if hp <= 0
	{
		instance_destroy(self)
	}
}