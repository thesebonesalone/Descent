// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_go_to_weapon(){

	var player = instance_nearest(x,y,obj_Player)
	var px = player.x
	var py = player.y
	
	var loose_weapon = instance_nearest(x,y,obj_weapon)
	if instance_exists(loose_weapon)
	{
		go_to_point(loose_weapon.x,loose_weapon.y, chase_speed)
	} else {
		state = "active"
	}
	with collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_weapon,false,true) {
		other.weapon = stats
		other.state = "active"
		instance_destroy(self)
	}
	
	
	if point_distance(x,y,px,py) > 240
	{
		active_timer --
	} else {
		active_timer ++
	}
	if active_timer > 240
	{
		active_timer = 240
	}
	if active_timer < 0
	{
		if point_distance(x,y,px,py) > 360
		{
			x = start_x
			y = start_y
			state = "dormant"
		}
	}
}