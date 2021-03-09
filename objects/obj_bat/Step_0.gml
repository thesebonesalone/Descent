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
				bat_hit()
				break;
			case "emerge":
				bat_emerge()
				break;
			case "active":
				bat_active()
				break;
			case "dormant":
				bat_dormant()
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