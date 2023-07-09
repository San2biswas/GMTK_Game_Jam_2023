// walk speed
x = x - (zom_speed * global.game_speed * global.game_play);


// bullet hit
if place_meeting(x, y, o_bullets)
{
	self.zom_health = self.zom_health - 20;
}


// zombie dead
if zom_health < 1 instance_destroy(self);


