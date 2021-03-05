draw_self()
for (var i = 0; i < 9; i ++)
{
	if hint_matrix[i]
	{
		var yy = floor(i/3)
		var xx = i - (floor(i/3) * 3)
		draw_sprite(spr_hint_marker,0,x + 7 + xx * 7, y + 7 + yy * 7)
	}
}

