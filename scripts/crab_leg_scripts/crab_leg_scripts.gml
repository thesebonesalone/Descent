// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function leg_wait(){
	leg_spd = (24 - leg_length) / 10
	leg_length += leg_spd
	if leg_length > 24
	{
		leg_length = 24
	}
	wait_timer ++
	if wait_timer > 25
	{
		state = "descend"
		wait_timer = 0
	}
}
function leg_emerge() {
		wait_timer ++
		shake_it(10)
		if wait_timer = 20
		{
			audio_play_sound(ogg_clack_2,1,false)
			state = "attack"
			leg_spd = 1
			wait_timer = 0
		}
}
function leg_wind_up() {
		wait_timer ++ 
		if wait_timer > 20
		{
			audio_play_sound(ogg_clack_2,1,false)
			state = "attack"
			wait_timer = 0
		}
}

function leg_attack() {
	with instance_create_depth(claw_x,claw_y,5,obj_enemy_hurtbox)
	{
		image_angle = other.angle
		image_xscale = 16
		image_yscale = 16
	}

	leg_spd = (32 - leg_length) / 10
	leg_length += leg_spd
	if leg_length >= 32
	{
		leg_length = 32
	}
	var turn_to = point_direction(x,y,player.x,player.y)
	var turn_dif = angle - turn_to
	var angle_dif = turn_dif
	
	if abs(turn_dif) > 180
	{
		if angle > turn_to
		{
			angle_dif = -1 * ((360 - angle) + turn_to)	
		}
		else
		{
			angle_dif = (360 - turn_to) + angle
		}	
	}
	angle -= angle_dif * 0.2
	
	wait_timer ++
	if wait_timer >= 40
	{
		state = "wait"
	}
}
function leg_descend() {
	if leg_length > 4
	{
		leg_length --
	} else {
		instance_destroy(self)
	}
}