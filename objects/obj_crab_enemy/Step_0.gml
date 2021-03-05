
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
			case "emerge":
				crab_enemy_emerge()
				break;
			case "active":
				crab_enemy_active()
				break;
			case "descend":
				crab_enemy_descend()
				break;
			case "dormant":
				crab_enemy_dormant()
				break;
			case "wait":
				crab_enemy_wait()
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