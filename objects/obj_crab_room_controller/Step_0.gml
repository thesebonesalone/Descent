if instance_exists(player)
{
	with player
	{
		if hp <= 0
		{
			
			audio_stop_all()
			part_particles_create(global.part_sys_fire,x,y,global.part_enemy_boom,20)
			audio_play_sound(ogg_death, 1, false)
			instance_destroy(other)
			with instance_create_depth(x,y,0,obj_fade_transition)
			{
				trans_room = game_over	
			}
			
			instance_destroy(self)
		}
	}
}