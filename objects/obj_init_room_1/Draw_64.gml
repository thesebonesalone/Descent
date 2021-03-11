var stan_x = floor(player.x/256)
var stan_y = floor(player.y/256)
var ar = map_array[stan_x][stan_y]


if !ar[0] and !ar[1] and !ar[2] and !ar[3]
{
	map_array[stan_x][stan_y] = global.room_list[stan_x][stan_y]
	ar = map_array[stan_x][stan_y]
	
	if surface_exists(map_surf)
	{
		draw_piece_of_minimap(ar,stan_x,stan_y)
	}

}


if surface_exists(map_surf)
{
	surface_set_target(map_surf)
	draw_set_color(c_orange)
	
	surface_reset_target()
	draw_surface_ext(map_surf,1784,8,4,4,0,c_white,1)
	draw_rectangle(1784 + stan_x * 16, 8 + stan_y * 16, 1784 + stan_x * 16 + 16, 8 + stan_y * 16 + 16, false)
} else {
	map_surf = surface_create(32,32)
	for (var i = 0; i < 8; i ++)
	{
		for (var j = 0; j < 0; j ++)
		{
			ar = map_array[i][j]
			if ar[0] || ar[1] || ar[2] || ar[3]
			{
				draw_piece_of_minimap(ar,i,j)
			}
			
		}
	}
}
draw_set_color(c_white)
