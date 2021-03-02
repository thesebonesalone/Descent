if state = "emerge" or state = "scream" or !global.pause
{
	switch state
	{
		case "emerge":
			crab_emerge()
			break;
		case "scream":
			crab_scream()
			break;
		case "wait":
			crab_wait()
			break;
		case "descend":
			crab_descend()
			break;
		case "choose_attack":
			crab_choose_attack();
			break;
		case "claw_attack":
			crab_claw_attack();
			break;
		case "rubble_attack":
			crab_rubble_attack();
			break;
		
		
	}
}

if hp <= 0
{
	instance_destroy(self)
}