if !audio_is_playing(ogg_victory_theme)
{
	instance_create_depth(400,400,5,obj_heart_container)
	instance_create_depth(400, 300, 5, obj_portal_2)
	audio_play_sound(theme_victory_march,1,true)
	instance_destroy(self)
}