switch state
{
	case "on_fire":
		handle_fire();
		break;
	case "stasis":
		handle_object_stasis();
		break;
}

if hp <= 0
{
	instance_destroy(self)
}

if stasis_speed > 0 and state != "stasis"
{
	handle_object_stasis_move()
}
