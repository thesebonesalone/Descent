draw_sprite_ext(spr_portal_1,0, x, y, 1 + (sin(size_counter) /10), 1 + (sin(size_counter) /10), 90 + (rot * 5),c_white,1)
gpu_set_blendmode(bm_add)
draw_sprite_ext(spr_portal_1,0, x, y, 1 + (sin(size_counter) /10), 1 + (sin(size_counter) /10), 90 + rot,c_white,1)
draw_sprite_ext(spr_portal_1,0, x, y, 1 - (sin(size_counter) /10), 1.25 - (sin(size_counter) / 10),360 - rot,c_white,0.5)
gpu_set_blendmode(bm_normal)
rot += 10
{
	if rot > 360
	{
		rot = 0
	}
}
size_counter += 0.05
