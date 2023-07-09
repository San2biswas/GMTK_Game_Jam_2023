// random position drop
rand_x = random_range(0, 4);
rand_y = random_range(4, 8);


// bullet creation
sun_time ++;
if sun_time > (limit) sun_time = 0;
if sun_time > (limit-1) &&  global.game_play == 1
{
	instance_create_layer(x + (rand_x * 4), y + (rand_y * 4), "drop", o_sun);
	global.sun_no ++;
}


// destroy on plants overlap
if place_meeting(x, y, o_sunflower) || place_meeting(x, y, o_plant)
{
	instance_destroy(self);
	o_generator.sPlant_no --;
}


// on collision with zombie
if place_meeting(x , y, o_zombie)
{
	sunflower_health = sunflower_health - (0.4 * global.game_speed * global.game_play);
}


// sunflower eaten
if sunflower_health < 1
{
	instance_destroy(self);
}


// color change
image_blend =  make_color_hsv(15 - (0.15 * sunflower_health), 128 - (1.25 * sunflower_health), 255);