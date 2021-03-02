event_inherited();

dormant_sprite = spr_bokoblin_blue_dormant
active_sprite = spr_bokoblin_blue_walking
wind_up_sprite = spr_bokoblin_blue_wind_up
attack_sprite = spr_bokoblin_blue_attack



//weapon attach points
dormant_attach = [[5,11,45],[3,11,135],[10,11,135],[12,11,45]]
active_attach = [[5,11,45],[3,11,135],[10,11,135],[12,11,45]]
attack_attach = [[11,10,330],[10,7,30],[3,11,210],[11,12,330]]
wind_up_attach = [[3,5,135],[12,7,135],[12,5,45],[3,7,135]]

dir = floor(random(4)) * 90 

weapon = ["sword",25,25,10,false]

weapon_fire = false