toggle = true
for (var i = 0; i < array_length(parent_switches); i ++)
{
	if parent_switches[i].pressed = true
	{
		toggle = false
	}
}



if toggle = false
{
	if anim_step > 5
	{
		anim_step = 0
		anim_frame ++
	}
	if anim_frame = 4
	{
		anim_frame = 3
	}
	mask_index = spr_wall_generic
}
else
{
	if anim_step > 5
	{
		anim_step = 0
		anim_frame --
	}
	if anim_frame = -1
	{
		anim_frame = 0
	}
	mask_index = -1
	sprite_index = noone
}
anim_step ++