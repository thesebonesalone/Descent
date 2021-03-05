puzzle_pieces = []

for (var i = 0; i < 9; i ++)
{
	var yy = floor(i / 3)
	var xx = i - (yy * 3)
	
	puzzle_pieces[i] = instance_create_depth(x + xx * 48, y + yy * 48, 5, obj_grid_input)
}

show_debug_message(global.puzzle_solution)