if hp != 500
{
	var dif = 500 - hp
	if target.vulnerable = true
	{
		target.hp -= dif
	} else {
		with instance_nearest(x,y,obj_hit_marker)
		{
			instance_destroy(self)
		}
	}
	hp = 500
	hit_cooldown = 0
}