switch state
{
	case "on_fire":
		handle_fire();
		break;
}

if hp <= 0
{
	instance_destroy(self)
}