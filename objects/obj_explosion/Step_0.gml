if bomb_timer = 16
{
	instance_destroy(self)
}
anim_frame = floor(bomb_timer/2)
bomb_timer ++