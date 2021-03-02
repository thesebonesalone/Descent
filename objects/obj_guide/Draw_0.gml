draw_self()
blink_step ++
if blink_step = 10
{
	blink_frame ++
	blink_step = 0
}
if blink_frame = 16
{
	blink_frame = 0
}
var play = instance_nearest(x,y,obj_Player)
var x_off = 0
var y_off = 0

if play.x > x + 4
{
		x_off = 1
}
if play.x < x - 4
{
	x_off = -1
}
if play.y < y - 4
{
	y_off = -1
}


draw_sprite(spr_guide_eyes,blink_frame,x - 4 + x_off, y - 8 + y_off)
if touched
{
	draw_sprite(spr_a_prompt,0,x,y - 8)
}
