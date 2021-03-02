// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crab_cutscene_first(){
	global.pause = true
	if y < 975
	{
		y += 0.5
	}
	else
	{
		state = "second"
		frame = 16
		instance_create_depth(384,1008,5,obj_bars_boss)
	}

}

function crab_cutscene_second(){
	global.pause = true
	if frame = 0
	{
		state = "third"
	}
	frame --
}

function crab_cutscene_third(){
	global.pause = true
	var player = instance_nearest(x,y,obj_Player)
	lerp_self(player.x,player.y)
	if abs(player.x - x) < 1 and abs(player.y - y) < 1
	{
		state = "fourth"
		var cam = instance_nearest(x,y,obj_camera)
		with cam
		{
			target = player
		}
	}
}

function crab_cutscene_fourth(){
	global.pause = false
	x = 368
	y = 688
}

function crab_cutscene_fifth(){
	global.pause = true
		lerp_self(400,400)
		if abs(400 - x) < 1 and abs(400 - y) < 1
		{
			state = "sixth"
			frame = 120
			instance_create_depth(400, 400,5,obj_crab_boss)
		}
}
function crab_cutscene_sixth(){
	global.pause = true
	var cam = instance_nearest(x,y,obj_camera)
	cam.shake = frame
	frame --
	if frame < 0
	{
		var player = instance_nearest(x,y,obj_Player)
		lerp_self(player.x,player.y)
		if abs(player.x - x) < 1 and abs(player.y - y) < 1
		{
			
			with cam
			{
				target = player
				
			}
			instance_destroy(self)
			audio_play_sound(global.theme,1,true)
			global.pause = false
		}
	}
}

function lerp_self(x_to, y_to) {
	x += (x_to - x) / 10
	y += (y_to - y) / 10
}
