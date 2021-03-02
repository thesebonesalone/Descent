
if ! global.pause
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
			case "dormant":
				chu_chu_dormant()
				break;
			case "emerge":
				chu_chu_emerge()
				break;
			case "active":
				bokoblin_active()
				break;
			case "wind_up":
				chu_chu_wind_up()
				break;
			case "attack":
				chu_chu_attack()
				break;
			case "hit":
				enemy_hit()
				break;
			case "on_fire":
				enemy_fire()
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