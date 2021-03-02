anim_frame = 0
anim_step = 0
parent_switches = []
toggle = true
true_x = x
true_y = y

var starter_x = floor(x/256) * 256
var starter_y = floor(y/256) * 256

for (var i = 0; i < 16; i ++)
{
	for (var j = 0; j < 16; j ++)
	{
		with instance_position(i * 16 + starter_x, j * 16 + starter_y,obj_perm_pressure_switch)
		{
			var len = array_length(other.parent_switches)
			other.parent_switches[len] = self
			show_debug_message("this is firing")
		}
	}
}