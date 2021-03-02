// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function circle_point(xx, yy, spd){
	var point_move_x = xx + lengthdir_x(40 + floor(random(8)),orbit_angle)
	var point_move_y = yy + lengthdir_y(40 + floor(random(8)), orbit_angle)
	var move_dir = point_direction(x,y, point_move_x, point_move_y)
	hsp = lengthdir_x(spd,move_dir)
	vsp = lengthdir_y(spd, move_dir)
	enemy_collision()
	
	dir = point_direction(x,y,xx,yy)
	
	if point_distance(x,y, point_move_x, point_move_y) < 2
	{
		orbit_angle += orbit_direction * 5
	}
	if orbit_angle > 360
	{
		orbit_angle -= 360
	}
	if orbit_angle < 360
	{
		orbit_angle += 360
	}
	
	if random(100) < 2 or collision_circle(x,y,24,obj_enemy_generic, false, true)
	{
		orbit_direction = -orbit_direction
	}
}