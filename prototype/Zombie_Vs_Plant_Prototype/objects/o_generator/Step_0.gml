// import
scr_controls();


#region --mouse placement



// mouse position
m_x = mouse_x; 
m_y = mouse_y; 


// mouse tiled placement
mb_x = (round(m_x/(tile_size * 4))) * tile_size * 4;
mb_y = (round(m_y/(tile_size * 4))) * tile_size * 4;



#endregion --mouse placement end


#region --plant generation



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
if gen_time > (reset_time-(global.game_speed * 15))		gen_time = 0;
if gen_time > (reset_time-(global.game_speed * 15) - 1) && global.game_play == 1 && instance_exists(o_empty)
{
	if (o_empty.x == (rand_x * tile_size * 4)) && (o_empty.y == (rand_y * tile_size * 4)) && global.sun_no > 1
	{
		instance_create_layer((rand_x * tile_size * 4), (rand_y * tile_size* 4), "plants", rand_plant);
		if rand_plant == o_sunflower
		{
			sPlant_no ++;
			global.sun_no = global.sun_no - 1;
		}
		if rand_plant == o_plant
		{
			plant_no ++;
			global.sun_no = global.sun_no - 2;
		}
	}
}



#endregion --plant generation end


#region --zombie generation



// zombie generator
if m_l && global.placeable == 1 && global.zom_age == 0
{
	instance_create_layer(mb_x, mb_y, "zombies", o_zombie);
	global.zom_age = 360;
}

global.zom_age = global.zom_age - (1 * global.game_speed * global.game_play);
if global.zom_age < 1 global.zom_age = 0;



#endregion --zombie generation end
