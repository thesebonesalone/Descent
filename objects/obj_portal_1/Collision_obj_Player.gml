if !touched
{
	audio_stop_all()
	audio_play_sound(ogg_descend,1,false)
	var controller_destroy = instance_nearest(x,y,obj_intro_room_controller)
	instance_destroy(controller_destroy)
	touched = true
	with instance_create_depth(x,y,5,obj_fade_transition_white)
	{
		trans_room = Test_Room
	}
}