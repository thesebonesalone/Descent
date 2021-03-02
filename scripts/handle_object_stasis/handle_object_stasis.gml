// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_object_stasis(){
	
	if hp != stasis_hp
	{
		stasis_speed += (stasis_hp - hp) / 30
		if stasis_speed > 30
		{
			stasis_speed = 30
		}
		hp = stasis_hp
		var player = instance_nearest(x,y,obj_Player)
		stasis_dir = point_direction(player.x,player.y,x + w/2,y + h/2)
	}
	stasis_timer --
	if stasis_timer <= 0
	{
		state = "dormant"
	}
}