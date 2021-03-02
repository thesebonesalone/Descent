// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function chu_chu_emerge(){
	
	var z_offset_setup = [0,-1,-2,-3,-3,-3,-2,-1]
	if emerge_timer < array_length(z_offset_setup) * 2 and emerge_timer > 0
	{
		z_offset = z_offset_setup[floor(emerge_timer / 2)]
	} else {
		z_offset = 0
	}
	emerge_timer ++
	if emerge_timer >= 16
	{
		state = "active"
	}

}