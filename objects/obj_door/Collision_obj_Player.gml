with instance_create_depth(0,0,5,obj_fade_transition)
{
	trans_room = other.room_select
}
var init = instance_nearest(x,y,obj_init_room_1)
if instance_exists(init)
{
	instance_destroy(init)	
}

audio_stop_all()
instance_destroy(self)
