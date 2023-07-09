// destroy on plants overlap
if place_meeting(x, y, o_plant)
{
	instance_destroy();
	o_generator.plant_no --;
}


// bullet creation
bulletTime ++;
if bulletTime > (limit/global.game_speed) bulletTime = 0;
if bulletTime > (limit-1) &&  global.game_play == 1
{
	//instance_create_layer(x, y, "plants", o_bullets);
}

