if instance_exists(obj_text_box)
{
	depth = -1
	
	if !faded
	{
		alp = 1
		draw_set_color(c_black)
		draw_rectangle(0,0,1920,1080, false)
		draw_set_color(c_white)
	}
} else if alp >= 0 {
	alp -= 0.02
		draw_set_alpha(alp)
		draw_set_color(c_black)
		draw_rectangle(0,0,1920,1080, false)
		draw_set_color(c_white)
		draw_set_alpha(1)
} else {
	faded = true
}