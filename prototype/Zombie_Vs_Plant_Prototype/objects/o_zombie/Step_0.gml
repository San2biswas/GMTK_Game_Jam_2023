// walk speed
x = x - (zom_speed * global.game_speed * global.game_play * zom_unblock);


// bullet hit
if place_meeting(x, y, o_bullets)
{
	self.zom_health = self.zom_health - 20;
}


// zombie blocked
if place_meeting(x, y, o_potato)
{
	zom_unblock = 0;
}
else
{
	zom_unblock = 1;
}


// zombie dead
if zom_health < 1 instance_destroy(self);


// zombie remove doubling on start
if place_meeting(x, y, o_zom_place) || place_meeting(x, y, o_zombie)
{
	instance_destroy();
}

