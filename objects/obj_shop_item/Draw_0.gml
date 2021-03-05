draw_sprite(buy_sprite,animate_frame,x,y)
if touched
{
	draw_sprite(spr_a_prompt,0,x,y)	
}
step ++
if step % 5 = 0
{
	
	animate_frame ++
	if animate_frame > sprite_get_number(buy_sprite)
	{
		animate_frame = 0
	}
}
draw_set_alpha(0.5)
draw_set_font(global.hud_font)
var price_string = string(price)
var len = string_length(price_string)
draw_text(x + 8 - (len * 2), y - 12,price_string)
draw_set_alpha(1)
