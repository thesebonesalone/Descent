pickupable = true
with other
{
	if pickup_pressed
	{
		power_array[1] = [0,480]
		var bomb = instance_nearest(x,y,obj_totem_bomb)
		var cryonis = instance_nearest(x,y,obj_totem_cryonis)
		var stasis = instance_nearest(x,y,obj_totem_stasis)
		var magnesis = instance_nearest(x,y,obj_totem_magnesis)
		instance_destroy(bomb)
		instance_destroy(cryonis)
		instance_destroy(stasis)
		instance_destroy(magnesis)
		power_pointer = 1
	}
}