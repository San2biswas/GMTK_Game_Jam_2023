// import
scr_controls();


// mouse position
m_x = mouse_x; 
m_y = mouse_y; 


// mouse tiled placement
mb_x = (round(m_x/(tile_size * 4))) * tile_size * 4;
mb_y = (round(m_y/(tile_size * 4))) * tile_size * 4;


// tile position generator
rand_x = irandom(2) + 1;
rand_y = irandom(4) + 1;


// random plant generate
plant[0] = o_plant;
plant[1] = o_sunflower;
//plant[rand_plant]

if plant_no > (sPlant_no * 2) || sPlant_no == 0
{
	rand_plant = o_sunflower;
}
else
{
	rand_plant = o_plant;
}


// plant generate
gen_time ++;
if gen_time > reset_time		gen_time = 0;
if gen_time > (reset_time-1) && global.game_play == 1
{
	instance_create_layer((rand_x * tile_size * 4), (rand_y * tile_size* 4), "plants", rand_plant);
	if rand_plant == o_sunflower
	{
		sPlant_no ++;
	}
	if rand_plant == o_plant
	{
		plant_no ++;
	}
	
}


// zombie generator
if m_l && global.placeable == 1
{
	instance_create_layer(mb_x, mb_y, "zombies", o_zombie);
}

