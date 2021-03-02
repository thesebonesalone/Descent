pressed = false
var starter_x = floor(x/256) * 256
var starter_y = floor(y/256) * 256
show_debug_message("Switch")
show_debug_message(starter_x)
show_debug_message(x)



for (var i = 0; i < 16; i ++)
{
	for (var j = 0; j < 16; j ++)
	{
		with instance_position(i * 16 + starter_x, j * 16 + starter_y,obj_bollard)
		{
			var len = array_length(parent_switches)
			parent_switches[len] = other
			show_debug_message("this is firing")
		}
	}
}
	
depth = 7