function draw_piece_of_minimap(arr,xx,yy)
{
	xx = xx * 4
	yy = yy * 4
	surface_set_target(map_surf)
	draw_rectangle(xx, yy, xx + 3, yy + 3, false)
	draw_set_color(c_aqua)
	draw_rectangle(xx + 1, yy + 1, xx + 2, yy + 2, false)
	
	if arr[0]
	{
		draw_rectangle(xx , yy + 1, xx + 2, yy + 2, false)
	}
	if arr[1]
	{
		draw_rectangle(xx + 1, yy, xx + 2, yy + 2, false)
	}
	if arr[2]
	{
		draw_rectangle(xx + 1, yy + 1, xx + 3, yy + 2, false)
	}
	if arr[3]
	{
		draw_rectangle(xx + 1, yy + 1, xx + 2, yy + 3, false)
	}
	
	
	draw_set_color(c_white)
	surface_reset_target()
	
}