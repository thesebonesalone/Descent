touched = true
with other
{
	if pickup_pressed and !global.pause
	{
		with other
		{
			speech_array = ["You might as well get out there.","Waiting around will get nothing done."]
			if talked_count = 0
			{
				speech_array = ["You look a little worse for wear.", "How are you feeling?", "Interesting...","Well then welcome to the Shrine of the Heavens.", "Don't read too much into the name, this place is far from heavenly.", "Honestly we're just really high up.", "If I had any recommendation it would be this.", "Get out.", "There's something wrong up here, I don't know what, but...", "Well I just don't recommend sticking around too long.", "Good luck!"]
			}
			if talked_count = 1
			{
				speech_array = ["Oh me?", "I'm just some guy, ya know?", "I don't have the stomach to get out.", "...", "I'm honestly not sure if I have a stomach."]
			}
			talked_count ++
			with instance_create_depth(x,y,5,obj_text_box)
			{
				text_array = other.speech_array	
			}
		}
	}
}
			