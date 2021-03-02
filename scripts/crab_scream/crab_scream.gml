// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crab_scream(){
	vulnerable = true
	if frame = 0
	{
		audio_play_sound(ogg_crab_scream,1, false)	
	}
	frame ++
	if frame = 120
	{
		state = "wait"
	}
}