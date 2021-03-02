if stats[3] >= 10
{
	draw_set_color(c_red)
}

if stats[3] >= 20
{
	draw_set_color(c_red)
}
var spr = noone
switch stats[0]
{
	case "sword":
	spr = spr_sword_pickup
	break;
	case "spear":
	spr = spr_spear_pickup
	break;
	case "torch":
	spr = spr_torch_pickup
	break;
}
draw_sprite(spr, image_index,x,y)
draw_set_color(c_white)
draw_set_alpha(0.5)
draw_set_font(global.hud_font)
draw_text(x,y,stats[3])
draw_set_alpha(1)