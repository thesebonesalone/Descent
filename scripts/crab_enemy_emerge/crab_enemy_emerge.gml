// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crab_enemy_emerge(){
	emerge_timer ++
	anim_frame = floor(emerge_timer / 8)
	if emerge_timer >= 32
	{
		emerge_timer = 0
		active_timer = 0
		state = "active"
		if random(100) > 50
		{
			move_direction = 1
		} else {
			move_direction = -1
		}
	}
	sprite_index = noone
}

function crab_enemy_descend(){
	emerge_timer ++	
	anim_frame = 4 - floor(emerge_timer / 4)
	if emerge_timer >= 16
	{
		emerge_timer = 0
		state = "wait"
		active_timer = 0
	}
	sprite_index = noone
}

function crab_enemy_active(){
	sprite_index = spr_crab_walk
		vsp = 0
		hsp = move_direction * 2
		enemy_collision()
		if hsp = 0
		{
			move_direction = -move_direction
		}
		active_timer ++
		if active_timer = 200
		{
			state = "descend"
		}
		if active_timer % 4 = 0
		{
			anim_frame ++
			if anim_frame = 4
			{
				anim_frame = 0
			}
		}
}

function crab_enemy_dormant(){
	sprite_index = noone
	var player = instance_nearest(x,y,obj_Player)
	if point_distance(x,y,player.x,player.y) < 150
	{
		state = "emerge"
	}
	
}

function crab_enemy_wait(){
	sprite_index = noone
	var player = instance_nearest(x,y,obj_Player)
	active_timer ++
	if active_timer = 240
	{
		sprite_index = spr_crab_walk
		do
		{
			x = player.x - 32 + random(64)
			y = player.y - 32 + random(64)
			
		} until !place_meeting(x,y,obj_wall_generic) and !place_meeting(x,y,obj_water)
		state = "emerge"
		active_timer = 0
	}
}