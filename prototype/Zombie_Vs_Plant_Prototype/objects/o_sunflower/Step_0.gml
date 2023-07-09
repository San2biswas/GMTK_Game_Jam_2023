// random position drop
rand_x = random_range(0, 4);
rand_y = random_range(0, 2);


// bullet creation
sun_time ++;
if sun_time > (limit) sun_time = 0;
if sun_time > (limit-1) &&  global.game_play == 1
{
	instance_create_layer(x + (rand_x * 16), y + (rand_y * 16), "drop", o_sun);
	global.sun_no ++;
}


// destroy on plants overlap
if place_meeting(x, y, o_sunflower) || place_meeting(x, y, o_plant)
{
	instance_destroy(self);
	o_generator.sPlant_no --;
}
