// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bat_dormant(){
	anim_sprite = spr_bat_dormant
	var player = instance_nearest(x,y, obj_Player)
	if point_distance(x,y,player.x,player.y) < 48
	{
		state = "emerge"
	}

}

function bat_emerge(){
	anim_sprite = spr_bat_dormant
	emerge_timer ++
	anim_frame = floor(emerge_timer / 4)
	if anim_frame = 4
	{
		state = "active"
		anim_frame = 0
		emerge_timer = 0
	}
}

function bat_active(){
	anim_sprite = spr_bat_flap
	emerge_timer ++
	if emerge_timer % 4 = 0
	{
		anim_frame ++
		if anim_frame = 4
		{
			anim_frame = 0
		}
	}
	var player = instance_nearest(x,y,obj_Player)
	speed = 0.3
	direction = point_direction(x,y,player.x,player.y)
	x += lengthdir_x(speed,direction)
	y += lengthdir_y(speed,direction)
}