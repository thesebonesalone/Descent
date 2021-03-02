if frozen_timer > 0
{
	if frozen_timer < 15
	{
		draw_sprite(spr_water_frozen,3,x,y)
	} else if frozen_timer < 30
	{
		draw_sprite(spr_water_frozen,2,x,y)
	} else if frozen_timer < 45
	{
		draw_sprite(spr_water_frozen,1,x,y)
	} else
	{
		draw_sprite(spr_water_frozen,0,x,y)
	}
}