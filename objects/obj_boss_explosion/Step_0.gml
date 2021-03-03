part_particles_create(global.part_sys_fire, x - 8 + random(16), y - 8 + random(16), explosion_particle, 2)
global.pause = true
if step = 0
{
	audio_play_sound_on(emitter, play_sound, false, 1)
}
step ++
if step > 120
{
	instance_destroy(self)
}

if !audio_is_playing(aud_rumble)
{
	audio_play_sound_on(emitter,aud_rumble,false,1)
}

if step % 10 = 0
{
	shake_it(10)
}
audio_emitter_pitch(emitter,1 + (sin(step) * 0.1))