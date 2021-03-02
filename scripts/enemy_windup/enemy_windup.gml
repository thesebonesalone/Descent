// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_windup(){
	
	var player = instance_nearest(x,y,obj_Player)
	if !instance_exists(player)
	{
		player = self
	}
	var px = player.x
	var py = player.y
	
	if point_distance(x,y,px,py) > 24
	{
		go_to_point(px,py,chase_speed/2)	
	}
	wind_up_timer ++
	if wind_up_timer > wind_up_time
	{
		state = "attack"
		var tdir = floor(dir / 90) * 90
		var x1 = x + lengthdir_x(32,tdir - 35)
		var y1 = y + lengthdir_y(32, tdir - 35)
		var x2 = x + lengthdir_x(32, tdir + 35)
		var y2 = y + lengthdir_y(32, tdir + 35)
		show_debug_message(tdir)
		if point_in_triangle(px - 6,py - 6,x,y,x1,y1,x2,y2) or point_in_triangle(px + 6,py + 6,x,y,x1,y1,x2,y2) or point_in_triangle(px - 6,py + 6,x,y,x1,y1,x2,y2) or point_in_triangle(px + 6,py - 6,x,y,x1,y1,x2,y2)
		{
			with player
			{
				if hit_timer < -15
				{
					hp --
					hit_timer = 10
					var tx = other.x
					var ty = other.y
					hsp = ((x > tx) - (x < tx)) * 2
					vsp = ((y > ty) - (y < ty)) * 2
				}
			}
		}
		var list = ds_list_create()
		var num = collision_line_list(x,y,x+lengthdir_x(32,tdir), y+lengthdir_y(32,tdir),obj_wall_generic,false,true,list,false)
		for (var i = 0; i < num; i ++)
		{
			with list[| i]
			{
				show_debug_message(state)
				if other.weapon_fire and flammable
				{
					state = "on_fire"
				}
				if 	state = "on_fire" and other.weapon[4] = true
				{
					show_debug_message("FIRE")
					other.weapon_fire = true
				}
			}
		}
		ds_list_destroy(list)
		
		
		
		wind_up_timer = 0
	}

}