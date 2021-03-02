// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_dodge(){
	frame ++
	hsp = dodge_hsp
	vsp = dodge_vsp
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
	if frame >= 8 {
		state = "walk"
	}
	player_movement()
	player_is_in_water()
}