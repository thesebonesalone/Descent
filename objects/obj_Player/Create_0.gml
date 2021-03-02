right = false
left = false
up = false
down = false
dodge_hold = false
dodge_press = false
attack_hold = false
attack_press = false
hsp = 0
vsp = 0
walk_speed = 2
hp_max = 4
hit_hsp = 0
hit_vsp = 0
hp = 4
coins = 0
arrows = 0

swim_frame = 0

anim_frame = 0
anim_timer = 0

//cooldowns
dodge_cooldown = 0
attack_cooldown = 0


//facing vairables
	dir = 0
	
// Timers
hit_timer = 0

global.attack_sounds = audio_emitter_create()


dodge_hsp = 0
dodge_vsp = 0
frame = 0
state = "walk"
phase_x_1 = x
phase_y_1 = y
phase_x_2 = x
phase_y_2 = y
power_array = [pointer_null,pointer_null,pointer_null,pointer_null]
weapon_array = [["sword",30,30,5], pointer_null, pointer_null, pointer_null, pointer_null, pointer_null]
weapon_pointer = 0
power_pointer = 0

weapon_fire = false


with instance_create_depth(x,y,0,obj_camera)
{
	target = other
}

active_attach = [[7,11,45],[13,12,45],[9,11,135],[2,12,135]]
hurt_attach = [[2,12,135],[9,11,135],[13,12,45],[7,11,45]]
attack_attach = [[11,10,330],[10,7,30],[3,11,210],[11,12,330]]
