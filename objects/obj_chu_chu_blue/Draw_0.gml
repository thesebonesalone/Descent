
var anim_step_timer = 15
var current_sprite = spr_chu_chu_active

var draw_color = c_white
if frozen
{
	draw_color = c_aqua
}
if time_stopped
{
	draw_color = c_yellow
}
if !global.pause
{
	anim_timer ++
}
if anim_timer > anim_step_timer
{
	anim_frame ++
	if anim_frame = 4
	{
		anim_frame = 0
	}
	anim_timer = 0
}
if state != "dormant"
{
	draw_sprite_ext(current_sprite,anim_frame,x,y + z_offset,1,1,0,draw_color,1)
}


if state != "attack"
{
	swing_timer = 0
}

if hit_cooldown > 0
{
	draw_text(x,y,"Hit!")
}

if hp < hp_max
{
	draw_set_alpha(0.5)
	draw_set_color(c_gray)
	var hpy = y - (sprite_get_height(sprite_index) / 2) - 4
	draw_rectangle(x - 8, hpy - 1 , x + 8, hpy, false)
	var pct = hp/hp_max
	draw_set_alpha(0.7)
	draw_set_color(c_red)
	draw_rectangle(x-8, hpy - 1, x - 8 + (16 * pct), hpy, false)
	draw_set_color(c_white)
	draw_set_alpha(1)
}



