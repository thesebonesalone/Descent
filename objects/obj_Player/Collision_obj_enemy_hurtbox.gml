if hit_timer < -45 and state != "dodge"
{
	hit_timer = 15
	var tx = other.x
	var ty = other.y
	
	hsp = ((x > tx) - (x < tx)) * 2
	vsp = ((y > ty) - (y < ty)) * 2
	hit_hsp = hsp
	hit_vsp = vsp
	hp --
	
	shake_it(8)
}