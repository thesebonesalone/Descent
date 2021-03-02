draw_set_font(global.box_font)
draw_set_color(c_white)

draw_rectangle(640,1032,1280,1048,false)
draw_set_color(c_red)
draw_rectangle(641,1032,641 + (638 * (hp/500)),1048,false)
draw_set_color(c_white)
draw_text_ext_transformed(910, 1000, "Krusty", 1, 48, 4,4, 0)