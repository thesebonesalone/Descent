solved = true
for (var i = 0; i < 9; i ++)
{
	var check = puzzle_pieces[i]
	if check.toggle != global.puzzle_solution[i]
	{
		solved = false
	}
}

if solved = true
{
	for (var i = 0; i < 9; i ++)
	{
		var check = puzzle_pieces[i]
		with check 
		{
			instance_destroy(self)	
		}
	}
	instance_create_depth(x + 56,y + 56,5,obj_heart_container)
	instance_destroy(self)
}