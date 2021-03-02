// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_attack(){
	var weapon = weapon_array[weapon_pointer]
	switch weapon[0]
	{
		case "sword":
			attack_sword()
			break;
		case "torch":
			attack_torch()
			break;
		case "spear":
			attack_spear()
			break;
	}
	frame ++
	
}