if !global.pause
{
	draw_set_font(global.hud_font)
	draw_set_color(c_white)
	draw_set_alpha(1)

	// Draw health Bar
	for (var i = 1; i <= hp_max; i ++) 
	{
		if i <= hp
		{
			draw_sprite_ext(spr_HP_Full, 0, 4 + (i - 1) * 32, 4,4,4,0,c_white,1)
		} else {
			draw_sprite_ext(spr_HP_Empty, 0, 4 + (i - 1) * 32, 4,4,4,0,c_white,1)
		}
	}
	// Draw Coins

	draw_sprite_ext(spr_hud_coin, 0, 4, 40,4,4,0,c_white,1)
	draw_text_ext_transformed(36,36,"x" + string(coins), 4, 300, 4, 4, 0)
	draw_sprite_ext(spr_hud_arrow, 0, 4, 72,4,4,0,c_white,1)
	draw_text_ext_transformed(36,68,"x" + string(arrows), 4, 300, 4, 4, 0)
		draw_sprite_ext(spr_hud_holder, 0, 4, 944, 8,8,0,c_white,0.7)
		draw_sprite_ext(spr_hud_holder, 0, 1784, 944, 8,8,0,c_white,0.7)
	
	// draw weapon choice from array info, this should never show up as pointer_null

	draw_set_alpha(0.5)
	draw_set_color(c_gray)
	draw_rectangle(1772,944,1776,1072,false)
	draw_set_alpha(0.7)
	// draw durability meter
	var weapon = weapon_array[weapon_pointer]
	var durability_p = weapon[1] / weapon[2]
	if durability_p > 0.75
	{
		draw_set_color(c_green)
	} else if durability_p > 0.25
	{
		draw_set_color(c_yellow)
	} else
	{
		draw_set_color(c_red)
	}
	draw_rectangle(1772,1072, 1776, 1072 - (128 * durability_p), false)
	draw_set_color(c_white)
	draw_set_alpha(0.7)
	//find weapon to draw
	var index = 0
	switch weapon[0]
	{
		case "sword":
		index = 0
		break;
		case "spear":
		index = 1
		break;
		case "axe":
		index = 2
		break;
		case "torch":
		index = 3
		break;
	}
	draw_sprite_ext(spr_hud_weapons, index, 1784,944, 8, 8, 0, c_white, 0.7)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_text_transformed(1784,1040,string(weapon[3]),4,4,0)
	//draw power, will point to null if no powers exist
	if power_array[power_pointer] != pointer_null
	{
		draw_sprite_ext(spr_hud_powers, power_pointer, 4, 944,8,8,0,c_white, 0.7)
		if power_array[power_pointer][0] > 0
		{
			var cooldown_p = power_array[power_pointer][0] / power_array[power_pointer][1]
			draw_set_alpha(0.5)
			draw_set_color(c_gray)
			draw_rectangle(136,1072,140,940,false)
			draw_set_alpha(0.7)
			draw_set_color(c_aqua)
			draw_rectangle(136,1072,140,1072 - (128 * cooldown_p), false)
			draw_set_alpha(1)
			draw_set_color(c_white)
		}
	
	}
}