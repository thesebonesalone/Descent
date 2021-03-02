if shake_count > 0 and pre_shake <= 0
{
		audio_play_sound_on(global.attack_sounds,ogg_thump,false,1)
}
pre_shake = shake_count
shake_count -= 1

if shake_count > 0
{
	shake_x = sin(shake_count)
} else {
	shake_x = 0
}

var color = c_white
if state = "stasis"
{
	color = c_yellow
}
draw_sprite_ext(sprite_index,0,x + shake_x,y,1,1,0,color,1)


if stasis_timer > 0 and stasis_speed > 0
{
	draw_set_color(c_yellow)
	draw_line(x + w/2,y + h/2, x + w/2 + lengthdir_x(stasis_speed, stasis_dir), y + h/2 +lengthdir_y(stasis_speed, stasis_dir))
	draw_set_color(c_white)
}