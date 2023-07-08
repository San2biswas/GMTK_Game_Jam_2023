// bullet hit
if place_meeting(x, y, o_bullets)
{
	self.zom_health = self.zom_health - 20;
}

// zombie dead
if zom_health < 1 instance_destroy(self);


