draw_sprite_ext(spr_hit_marker,0,x,y,1,1,dir,c_white,0.75)
timer ++
if timer = 6
{
	frame ++
}
if timer = 12
{
	instance_destroy(self)
}