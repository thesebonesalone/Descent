x = target.x - offset_x
y = target.y - offset_y

if !target.vulnerable
{
	sprite_index = noone
} else {
	sprite_index = spr_boss_hitbox
}