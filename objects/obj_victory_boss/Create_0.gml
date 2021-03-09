audio_play_sound(ogg_victory_theme,1, false)
with instance_nearest(x,y,obj_Player)
{
	state = "victory"
}