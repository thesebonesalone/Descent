// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crab_descend(){
	vulnerable = false
	y_offset += 0.4
	part_particles_create(global.part_sys_fire,x - 32 + random(64),y,global.part_dust,1)
	part_particles_create(global.part_sys_fire,x - 32 + random(64),y,global.part_barrel,1)
	if !audio_is_playing(rumble_snd)
	{
		audio_play_sound(rumble_snd,1,false)	
	}
	if y_offset = 24
	{
		frame = 0
		audio_stop_sound(rumble_snd)
		state = "choose_attack"
	}

}