/// @description Insert description here
// You can write your code in this editor


var d_sprite = spr_player_dormant

var facing = floor(dir/ 90)
if state = "arrow"
{
	draw_set_color(c_aqua)
	draw_line(x,y, x + lengthdir_x(360,aim_angle), y + lengthdir_y(360,aim_angle))
	draw_set_color(c_white)
}

// get weapon sprite and attach points

var weapon_sprite = noone
switch weapon_array[weapon_pointer][0]
{
	case "sword":
		weapon_sprite = spr_enemy_sword
	break;
	case "torch":
		weapon_sprite = spr_enemy_torch
	break;
	case "spear":
		weapon_sprite = spr_enemy_spear
		break;
}
var atc_x = noone
var atc_y = noone
var atc_rot = noone
var attach = noone
switch state
{
	case "attack":
	attach = attack_attach
	break;
	case "walk":
	if hit_timer > 0
	{
		attach = hurt_attach
	} else
	{
		attach = active_attach
	}
	break;
	case "dodge":
	attach = active_attach
	break;
}
if attach != noone
{
	atc_x = attach[facing][0]
	atc_y = attach[facing][1]
	atc_rot = attach[facing][2]
}




var c_frame = (facing * 4) + anim_frame

	if anim_timer = 6
	{
		anim_frame ++
		anim_timer = 0
	}
	if anim_frame = 4
	{
		anim_frame = 0
	}
if !global.pause
{
	anim_timer ++


	if state = "walk"
	{
		if up or down or right or left
		{
			d_sprite = spr_player_walking
			if anim_frame = 1 || anim_frame = 3
			{
				audio_emitter_pitch(global.player_step_audio, 0.75 + random(1))
				audio_play_sound_on(global.player_step_audio,ogg_grass_step,false,1)
			}
		}
	}
	if state = "attacking" or state = "power_use"
	{
		d_sprite = spr_player_attack
	}
	if hit_timer > 0
	{
		d_sprite = spr_player_damaged
	}

	if state = "swimming"
	{
		if swim_frame > 16
		{
			d_sprite = spr_player_swimming	
		} else {
			d_sprite = spr_player_splash
			c_frame = floor(swim_frame /2)
		}
	
	}
}



if dodge_cooldown > 0 and state != "dodge"
{
	draw_set_alpha(0.5)
	draw_set_color(c_gray)
	draw_rectangle(x + 10, y - 8, x + 11, y + 7, false)
	draw_set_color(c_aqua)
	draw_set_alpha(0.8)
	draw_rectangle(x + 10, (y - 8) + (16 - ((dodge_cooldown / 30) * 16)), x + 11, y + 7, false)
	draw_set_alpha(1)
	draw_set_color(c_white)	
}

if state = "dodge"
{
	gpu_set_blendmode(bm_add)
	draw_set_alpha(0.7)
	draw_set_color(c_aqua)
	draw_sprite(d_sprite, c_frame, phase_x_1, phase_y_1)
	draw_set_alpha(0.5)
	draw_sprite(d_sprite, c_frame, phase_x_2, phase_y_2)
	draw_set_alpha(1)
	gpu_set_blendmode(bm_normal)
}
if state = "attacking"
{
	var atk_sprite
	var frame_factor
	var weapon = weapon_array[weapon_pointer][0]
	if weapon = "sword" || weapon = "torch"
	{
		atk_sprite = spr_sword_swing
		frame_factor = 4
	}
	if weapon = "spear"
	{
		atk_sprite = spr_spear_attack
		frame_factor = 2
	}
	if (frame / frame_factor) < 4
	{
	draw_sprite_ext(atk_sprite,floor(frame/frame_factor), x,y,1,1,dir, c_white,1)
	}
}
if state = "power_use"
{
	draw_set_alpha(0.5)
	if power_pointer = 1
	{
		
		draw_set_color(c_yellow)
		draw_circle(x,y,64,false)
		
		
	}
	if power_pointer = 2
	{
		draw_set_color(c_aqua)
		draw_triangle(x,y,x + lengthdir_x(64,dir - 30), y + lengthdir_y(64, dir - 30),x + lengthdir_x(64,dir + 30), y + lengthdir_y(64, dir + 30),false)
	}
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_sprite_ext(spr_hud_powers,power_pointer,x -32, y-32,4,4,0,c_white,0.5)
}
if (facing = 1 || facing = 2) and atc_x != noone
{
	draw_sprite_ext(weapon_sprite,0,x + atc_x - 8, y + atc_y - 8, 1,1, atc_rot,c_white,1)
}


draw_sprite(d_sprite,c_frame,x,y)

if facing != 1 and facing != 2 and atc_x != noone
{
	draw_sprite_ext(weapon_sprite,0,x + atc_x - 8, y + atc_y - 8, 1,1, atc_rot,c_white,1)
}
if weapon_fire and random(100) < 25 and atc_x != noone
{
	var len_x = lengthdir_x(16,atc_rot)
	var len_y = lengthdir_y(16,atc_rot)
	var fire_x = x 	+ atc_x - 8 + len_x
	var fire_y = y + atc_y - 8 + len_y
	
	part_particles_create(global.part_sys_fire,fire_x,fire_y,global.part_fire,1)
}
