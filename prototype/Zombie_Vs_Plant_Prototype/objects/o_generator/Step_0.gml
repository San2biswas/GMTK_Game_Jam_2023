// tile position generator
rand_x = irandom(2) + 1;
rand_y = irandom(4) + 1;


// plant generate
gen_time ++;
if gen_time > reset_time		gen_time = 0;
if gen_time > (reset_time-1) && global.game_play == 1
{
	instance_create_layer((rand_x * tile_size * 4), (rand_y * tile_size* 4), "plants", o_plant);
	plant_no ++;
}

