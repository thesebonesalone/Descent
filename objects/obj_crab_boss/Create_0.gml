state = "emerge"
y_offset = 32
with instance_create_depth(x-16, y - 16, 5, obj_boss_hitbox)
{
	image_xscale = 32
	image_yscale = 16
	target = other
	offset_x = 16
	offset_y = 16
}
vulnerable = true
hp = 5
rumble_snd = ogg_rumble