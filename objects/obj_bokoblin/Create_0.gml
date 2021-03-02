/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

dormant_sprite = spr_bokoblin_dormant
active_sprite = spr_bokoblin_walking
wind_up_sprite = spr_bokoblin_wind_up
attack_sprite = spr_bokoblin_attack



//weapon attach points
dormant_attach = [[5,11,45],[3,11,135],[10,11,135],[12,11,45]]
active_attach = [[5,11,45],[3,11,135],[10,11,135],[12,11,45]]
attack_attach = [[11,10,330],[10,7,30],[3,11,210],[11,12,330]]
wind_up_attach = [[3,5,135],[12,7,135],[12,5,45],[3,7,135]]

dir = floor(random(4)) * 90 
var wep_index = floor(random(3))
var weps = [["torch",15,15,2,true],["sword",20,20,6, false],["spear",20,20,4, false]]
weapon = weps[wep_index]

weapon_fire = false