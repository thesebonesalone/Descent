if spd > 0
{
	spd -= spd * 0.1

if spd < 0.1
{
	spd = 0
}
	var vsp = lengthdir_x(spd,direction)
	var hsp = lengthdir_y(spd,direction)

	if place_meeting(x + hsp, y, obj_wall_generic)
	{
		hsp = 0
	}
	x += hsp
	if place_meeting(x,y + vsp, obj_wall_generic)
	{
		vsp = 0
	}
	y += vsp
}