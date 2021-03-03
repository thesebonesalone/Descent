with instance_create_depth(x,y,5,obj_boss_explosion)
{
	sprite_index = other.sprite_index
	play_sound = ogg_crab_scream
}
if audio_is_playing(global.theme)
{
	audio_stop_sound(global.theme)
}
if audio_is_playing(ogg_crab_scream)
{
	audio_stop_sound(ogg_crab_scream)
}