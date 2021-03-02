touched = true
with other
{
	if pickup_pressed and !global.pause
	{
		with instance_create_depth(x,y,5,obj_text_box)
		{
			text_array = ["Don't tell the other slimes I'm here.", "Anyway, take a look at my wares!", "I definitely didn't steal them from chests or something."]	
		}
	}
}