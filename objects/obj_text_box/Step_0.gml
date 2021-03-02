global.pause = true
next_pressed = false
with player 
{
	if pickup_pressed or attack_press
	{
		other.next_pressed = true
		pickup_pressed = false
		attack_press = false
	}
}
what_to_say = text_array[array_step]
text_timer ++
if text_timer = 4
{
	if text_step <= string_length(what_to_say)
	{
	text_step ++
	audio_play_sound(ogg_text,1,false)
	
	text_string += string_char_at(what_to_say, text_step)
	}
	text_timer = 0
}

if next_pressed
{
	show_debug_message(text_step)
	show_debug_message(string_length(what_to_say))
	if text_step >= string_length(what_to_say)
	{
		array_step ++
		if array_step = array_length(text_array)
		{
			global.pause = false
			instance_destroy(self)
		}
		else
		{
			what_to_say = text_array[array_step]
			text_step = 0
			text_string = ""
		}	
	} else {
		text_string = what_to_say
		text_step = string_length(what_to_say)
	}
	
}