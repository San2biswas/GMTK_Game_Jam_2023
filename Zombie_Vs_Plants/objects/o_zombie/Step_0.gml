// walk speed
x = x - (zom_speed * global.game_speed * global.game_play * zom_unblock);


// bullet hit dammage
if place_meeting(x, y, o_bullets)
{
	self.zom_health = self.zom_health - 20;
	audio_play_sound(snd_zom_hit, 100, false); // audio
}


// zombie blocked
if place_meeting(x, y, o_potato) || place_meeting(x, y, o_plant) || place_meeting(x, y, o_sunflower)
{
	zom_unblock = 0;
}
else
{
	zom_unblock = 1;
}


// zombie remove doubling on start
if place_meeting(x, y, o_zombie) && !place_meeting(x, y, o_zom_place)
{
	instance_destroy();
}


// zombie dead
if zom_health < 1
{
	instance_destroy(self);
}


// game win
if place_meeting(x, y, o_house)
{
	game_restart();
}


// color change
image_blend =  make_color_hsv(100 - (1.0 * zom_health), 128 - (1.25 * zom_health), 255);
