// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_object_stasis_move(){
	
		var hsp_temp = lengthdir_x(1, stasis_dir)
		var vsp_temp = lengthdir_y(1,stasis_dir)
	for(var i = 0; i < stasis_speed; i ++) {
		if place_meeting(x + hsp_temp, y, obj_wall_generic)
		{
			hsp_temp = lengthdir_x(-1, stasis_dir)
		}
		x += hsp_temp
		if place_meeting(x, y + vsp_temp, obj_wall_generic)
		{
			vsp_temp = lengthdir_y(-1,stasis_dir)
		}
		
		y += vsp_temp
	}
	if place_meeting(x,y,obj_Player)
	{
		instance_destroy(self)
	}
	stasis_speed --
}