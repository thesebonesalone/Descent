draw_set_alpha(alp)
draw_set_color(c_black)
draw_rectangle(0,0,1920,1080,false)
alp += trans_dir
draw_set_color(c_white)
draw_set_alpha(1)
if alp = 0
{
	instance_destroy(self)
}
if alp = 1
{
	room_goto(trans_room)
	trans_dir = -trans_dir
}

	