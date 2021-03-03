part_type_destroy(explosion_particle)



if audio_is_playing(ogg_rumble)
{
	audio_stop_sound(ogg_rumble)
}
audio_emitter_free(emitter)
global.pause = false
room_speed = 60
instance_create_depth(x,y,5,obj_victory_boss)
