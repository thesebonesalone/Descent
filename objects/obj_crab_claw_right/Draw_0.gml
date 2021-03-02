
if state != "emerge"
{
	
	var claw_rot = point_direction(claw_x,claw_y,player.x,player.y) - 90
	if state = "wait"
	{
		image_index = 0
	}
	if state = "attack"
	{
		image_index = 2
	}
	draw_sprite_ext(spr_crab_claw,image_index,claw_x,claw_y,1,1,claw_rot,c_white,1)

	var h = sqrt(sqr(16) - sqr((leg_length/2)))

	var half_x = x + lengthdir_x(leg_length/2, angle)
	var half_y = y + lengthdir_y(leg_length/2, angle)

	var x3 = half_x + lengthdir_x(h, angle - 90)
	var y3 = half_y + lengthdir_y(h, angle - 90)

	var claw_angle = point_direction(x3,y3,claw_x, claw_y)
	var root_angle = point_direction(x3,y3,x,y)

	draw_sprite_ext(spr_crab_leg,0,x3,y3,1,1,claw_angle,c_white,1)
	draw_sprite_ext(spr_crab_leg,0,x3,y3,1,1,root_angle,c_white,1)
}
if state = "emerge" || state = "descend"
{
	part_particles_create(global.part_sys_fire,x - 8 + random(16),y,global.part_dust,1)
	part_particles_create(global.part_sys_fire,x - 8 + random(16),y,global.part_barrel,1)
}