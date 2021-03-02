draw_sprite(spr_flowing_grass, frame,x,y)
clock ++
if clock % 10 = 0
{
	frame ++
}
if frame = 8
{
	frame = 0
}