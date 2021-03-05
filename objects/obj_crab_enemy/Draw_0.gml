if state = "active" or state = "on_fire" or state = "hit"
{
	draw_sprite(spr_crab_walk, anim_frame,x,y)
}
if state = "emerge" or state = "descend"
{
	draw_sprite(spr_crab_emerge, anim_frame, x,y)	
}