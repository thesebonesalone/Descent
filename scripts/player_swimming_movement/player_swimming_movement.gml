// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_swimming_movement(){
	if swim_frame > 16
	{
		hsp = ((right * 1) - (left * 1)) * walk_speed / 2
		vsp = ((down * 1) - (up * 1)) * walk_speed / 2
	} else {
		hsp = 0
		vsp = 0
	}
	swim_frame ++
	if hsp != 0 or vsp != 0
	{
		dir = point_direction(x,y,x + hsp, y + vsp)
	}
		while place_meeting(x + hsp, y, obj_wall_generic) 
		{
			hsp -= 0.5 * sign(hsp)
		}
		x += hsp
		while place_meeting(x, y+ vsp, obj_wall_generic)
		{
			vsp -= 0.5 * sign(vsp)
		}
		y += vsp
	image_index = dir/45
	player_is_in_water()

}