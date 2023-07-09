// bullet speed
x = x + (10 * global.game_speed * global.game_play);

// bullet destroy on hit
if place_meeting(x-10, y, o_zombie)
{
	instance_destroy(self);
}


// destroy outside of bbox
if place_meeting(x, y, o_destroy)
{
	instance_destroy();
}
