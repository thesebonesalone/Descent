// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_slash_sounds(){
		var sounds = [ogg_swing_1, ogg_swing_2]
		var snd = sounds[floor(random(2))]
		audio_emitter_pitch(global.attack_sounds, 0.5 + random(1))
		audio_play_sound_on(global.attack_sounds,snd,false,1)

}