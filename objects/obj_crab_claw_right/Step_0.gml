if !global.pause
{
	claw_x = x + lengthdir_x(leg_length, angle)
	claw_y = y + lengthdir_y(leg_length, angle)


	switch state
	{
		case "emerge":
			leg_emerge()
			break;
		case "wait":
			leg_wait()
			break;
		case "wind_up":
			leg_wind_up()
			break;
		case "attack":
			leg_attack();
			break;
		case "descend":
			leg_descend();
			break;
	}
}