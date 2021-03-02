if !global.pause
{
	switch state
	{
		case "falling":
			rubble_falling();
			break;
		case "explode":
			rubble_explode();
			break;
	
	}
}