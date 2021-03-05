/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var trees = [spr_tree, spr_tree_2]

spr = trees[floor(random(2))]

if random(100) < 25
{
	instance_create_depth(x,y,0,obj_bat)
}