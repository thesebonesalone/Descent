// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function go_to_point(xx,yy, spd){

	dir = point_direction(x,y,xx,yy)
	hsp = lengthdir_x(spd,dir)
	vsp = lengthdir_y(spd,dir)
	
	enemy_collision()
}