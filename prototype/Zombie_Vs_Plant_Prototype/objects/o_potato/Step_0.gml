// on collision with zombie
if place_meeting(x , y, o_zombie)
{
	pot_health = pot_health - 0.4;
}


// potato eaten
if pot_health < 1
{
	instance_destroy(self);
}

