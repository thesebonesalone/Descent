with other
{
	if hit_timer < -15
		{
			hp --
			hit_timer = 10
			var tx = other.x
			var ty = other.y
			hsp = ((x > tx) - (x < tx)) * 2
			vsp = ((y > ty) - (y < ty)) * 2
			instance_destroy(other)
		}
}