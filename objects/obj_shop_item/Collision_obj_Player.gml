touched = true
if other.pickup_pressed and other.coins >= price
{
	
	event_perform(ev_alarm, 0)
	instance_destroy(self)
}