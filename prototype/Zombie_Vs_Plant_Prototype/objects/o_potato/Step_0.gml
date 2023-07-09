// on collision with zombie
if place_meeting(x , y, o_zombie)
{
	pot_health = pot_health - (0.8 * global.game_speed * global.game_play);
}


// potato eaten
if pot_health < 1
{
	instance_destroy(self);
}

