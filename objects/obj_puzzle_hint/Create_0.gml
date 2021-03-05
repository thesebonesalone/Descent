hint_matrix = global.puzzle_solution
for (var i = 0; i < 2; i ++)
{
	var index = floor(random(9))
	if hint_matrix[index]
	{
		i --
	} else
	{
		hint_matrix[index] = true
	}
}
instance_create_depth(x,y,5,obj_wall_generic)
instance_create_depth(x + 16,y,5,obj_wall_generic)
instance_create_depth(x + 16,y + 16,5,obj_wall_generic)
instance_create_depth(x,y + 16,5,obj_wall_generic)
show_debug_message("made")