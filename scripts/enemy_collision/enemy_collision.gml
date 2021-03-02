// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_collision(){
	var hsp_offset = hsp
	var vsp_offset = vsp
	while place_meeting(x + hsp_offset, y, obj_wall_generic) or place_meeting(x + hsp_offset, y, obj_water)		
	{
		hsp_offset -= 0.5 * sign(hsp)
	}
	hsp = hsp_offset
	x += hsp
	while place_meeting(x, y + vsp_offset, obj_wall_generic) or place_meeting(x, y + vsp_offset, obj_water)	
	{
	
		vsp_offset -= 0.5 * sign(vsp)
	}	
	vsp = vsp_offset
	y += vsp

}