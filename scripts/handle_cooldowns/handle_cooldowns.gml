// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_cooldowns(){
	if state != "dodge"
	{
		dodge_cooldown --
	}
	if state != "attacking"
	{
		attack_cooldown --
	}
}