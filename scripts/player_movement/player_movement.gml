// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement(){
	if hit_timer <= 0
	{
		hsp = ((right * 1) - (left * 1)) * walk_speed
		vsp = ((down * 1) - (up * 1)) * walk_speed
	} else {
		hsp = hit_hsp
		vsp = hit_vsp
	}
	
	if hsp != 0 or vsp != 0
	{
		dir = point_direction(x,y,x + hsp, y + vsp)
	}
	var prehsp = hsp
	var prevsp = vsp
		if place_meeting(x, y, obj_wall_generic)
		{
			hsp = 0
			vsp = 0
			var stan_x = floor(x / 16) * 16 + 8
			var stan_y = floor(y / 16) * 16 + 8
			x = stan_x
			y = stan_y
			var offset_x = 0
			var offset_y = 0
			var which = 0
			do
			{
				show_debug_message(string(x) + "," + string(y) + " searching")
				switch which
				{
					case 0:
					offset_x = -offset_x
					offset_x += 1
					break;
					case 1:
					offset_x = -offset_x
					break;
					case 2:
					offset_y = -offset_y
					offset_y += 1
					break;
					case 3:
					offset_y = -offset_y
					break;
				}
				which += 1
				if which = 4
				{
					which = 0
				}
				x += offset_x * 16
				y += offset_y * 16
				
			} until !place_meeting(x,y,obj_wall_generic)
		}
		
	
	
	
		while place_meeting(x + hsp, y, obj_wall_generic) 
		{
			hsp -= 0.5 * sign(prehsp)
		}
		x += hsp
		while place_meeting(x, y+ vsp, obj_wall_generic)
		{
			vsp -= 0.5 * sign(prevsp)
		}
		y += vsp
		
		
		
		
		
	image_index = dir/45
	player_is_in_water()
	
	
}