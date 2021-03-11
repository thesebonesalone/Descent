var player = instance_nearest(x,y,obj_Player)
with player
{
	hp += 3
	if hp > hp_max
	{
		hp = hp_max
	}
}
