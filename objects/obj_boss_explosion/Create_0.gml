explosion_particle = part_type_create()
part_type_sprite(explosion_particle, spr_explode_boss_particle, true, false, true)
part_type_life(explosion_particle, 45, 75)
part_type_blend(explosion_particle,true)
part_type_direction(explosion_particle,0,360,false,false)
part_type_speed(explosion_particle, 0.2,0.5,0,0)

step = 0

aud_rumble = ogg_rumble
emitter = audio_emitter_create()
room_speed = 20