if state = "falling"
{
	draw_sprite(spr_rubble, 0, x, y - z)
	if frame % 4 <= 2
	{
		draw_sprite(spr_warning,0,x,y)
	}
}
else
{
	draw_sprite(spr_sand_explosion,floor(frame/3),x,y)
}