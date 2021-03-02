global.pause = false

set_up_audio()
global.theme = theme_heaven
// Initiate Fonts

randomize()
global.hud_font = font_add_sprite_ext(spr_hud_font, "x0123456789", false, 0)
global.box_font = font_add_sprite_ext(spr_font_longer, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,?!'", false, 0)

//set up particle system
global.part_sys_fire = part_system_create()
//basic smoke particle
global.part_smoke = part_type_create()
part_type_direction(global.part_smoke,90,90,0,3)
part_type_sprite(global.part_smoke,spr_smoke_particle,false,false,true)
part_type_gravity(global.part_smoke,0.01,90)
part_type_life(global.part_smoke,30,240)
part_type_size(global.part_smoke,1,1,0.01,0.1)
part_type_alpha1(global.part_smoke,0.2)

//basic flame particle
global.part_fire = part_type_create()
part_type_sprite(global.part_fire,spr_flame_1,true,false,true)
part_type_life(global.part_fire,15,25)
part_type_blend(global.part_fire,true)
part_type_alpha1(global.part_fire,1)

//Barrel debris
global.part_barrel = part_type_create()
part_type_sprite(global.part_barrel,spr_barrel_debris,false,false,true)
part_type_size(global.part_barrel,0.2,0.5,0,0)
part_type_life(global.part_barrel,15,30)
part_type_speed(global.part_barrel,0.5,1,0,0)
part_type_direction(global.part_barrel,30,120,0,0)
part_type_gravity(global.part_barrel,0.1,270)
part_type_orientation(global.part_barrel,0,360,1,2,false)

global.part_dust = part_type_create()
part_type_direction(global.part_dust,90,90,0,3)
part_type_sprite(global.part_dust,spr_smoke_particle,false,false,true)
part_type_gravity(global.part_dust,0.01,90)
part_type_life(global.part_dust,30,120)
part_type_size(global.part_dust,1,1,0.01,0.1)
part_type_alpha1(global.part_dust,0.2)
part_type_color1(global.part_dust,c_orange)

global.part_enemy_boom = part_type_create()

part_type_direction(global.part_enemy_boom,0,360,0,0)
part_type_life(global.part_enemy_boom,15,15)
part_type_speed(global.part_enemy_boom,4,4,0,0)
part_type_sprite(global.part_enemy_boom,spr_enemy_boom_particle,false,false,false)
part_type_orientation(global.part_enemy_boom,0,0,0,0,true)


alp = 1
with instance_create_depth(0,0,5,obj_text_box)
{
	text_array = ["Ah. You're finally awake."]
}
faded = false