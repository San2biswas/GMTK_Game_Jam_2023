// random position drop
rand_x = random_range(0, 4);
rand_y = random_range(0, 2);


// bullet creation
sun_time ++;
if sun_time > (limit/global.game_speed) sun_time = 0;
if sun_time > (limit-1) &&  global.game_play == 1
{
	instance_create_layer(x + (rand_x * 16), y + (rand_y * 16), "drop", o_sun);
}

