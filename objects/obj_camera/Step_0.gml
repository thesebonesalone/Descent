/// @description Insert description here
// You can write your code in this editor
if instance_exists(target)
{
	x = target.x - camera_get_view_width(view_camera[0])/2
	y = target.y - camera_get_view_height(view_camera[0])/2
	x += sin(shake)
	camera_set_view_pos(view_camera[0], x, y)

}

if active_timer <= 0
{
	instance_deactivate_object(obj_wall_generic)
	instance_deactivate_object(obj_grass_1)
	instance_activate_region(x-120, y - 120, 720, 510, true)
	active_timer = 15
}
active_timer --
if shake > 0
{
	shake --
}
