with other
{
	if hit_cooldown <= 0
	{
		state = "hit"
		attack_x = other.x
		attack_y = other.y
		hit_cooldown = 16
		hp -= 15 * (1 + 2 * (state = "dormant")) 
	}
}
instance_destroy(self)