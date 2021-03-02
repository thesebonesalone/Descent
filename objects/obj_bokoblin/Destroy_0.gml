
event_inherited()
if weapon != pointer_null
{
	with instance_create_depth(x + irandom_range(-8,8),y  + irandom_range(-8,8),5,obj_weapon)
	{
		stats = other.weapon
	}
}