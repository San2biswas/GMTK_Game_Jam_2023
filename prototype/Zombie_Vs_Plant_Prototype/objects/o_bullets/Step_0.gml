// bullet speed
x = x + (10 * global.game_speed);

// bullet destroy on hit
if place_meeting(x-10, y, o_zombie)
{
	instance_destroy(self);
}
