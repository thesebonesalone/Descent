
var anim_step_timer = 15
var current_sprite = dormant_sprite
var face_dir = floor((dir + 45)/90)
if face_dir > 3
{
	face_dir = 0
}
var attach_points = [0,0,0]
switch state
{
	case "dormant":
		current_sprite = dormant_sprite
		attach_points = dormant_attach[face_dir]
		break;
	case "hit":
		current_sprite = dormant_sprite
		attach_points = dormant_attach[face_dir]
		break;
	case "active":
		current_sprite = active_sprite
		attach_points = active_attach[face_dir]
		break;
	case "wind_up":
		current_sprite = wind_up_sprite
		attach_points = wind_up_attach[face_dir]
		break;
	case "attack":
		current_sprite = attack_sprite
		attach_points = attack_attach[face_dir]
		break;
}


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
if attach_points != noone
{
	at_x = attach_points[0]
	at_y = attach_points[1]
	at_rot = attach_points[2]
}
if face_dir = 2 or face_dir = 1
{
	if attach_points != noone
	{
		draw_sprite_ext(spr_enemy_sword,0,x - 8 + at_x, y - 8 + at_y, 1, 1, at_rot, c_white, 1)
	}
}


draw_sprite_ext(current_sprite,face_dir * 4 + anim_frame,x,y,1,1,0,draw_color,1)

if face_dir = 0 or face_dir = 3
{
	if attach_points != noone
	{
		draw_sprite_ext(spr_enemy_sword,0,x - 8 + at_x, y - 8 + at_y, 1, 1, at_rot, c_white, 1)
	}
}

if state = "attack" and swing_timer < 8
{
	draw_sprite(spr_sword_swing, face_dir * 4 + (swing_timer / 2),x,y)
	swing_timer ++
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



