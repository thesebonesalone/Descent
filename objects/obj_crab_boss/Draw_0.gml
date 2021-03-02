if state = "emerge" || state = "descend"
{
	draw_sprite_part_ext(sprite_index, image_index,0,0,64,24 + (32 - y_offset),x - 32,y - 48 + y_offset,1,1,c_white,1)
}
if state = "scream" || state = "wait"
{
	draw_self()
}