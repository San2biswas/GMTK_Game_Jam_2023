// destroy on plants overlap
if place_meeting(x, y, o_plant) || place_meeting(x, y, o_sunflower)
{
	instance_destroy(self);
	o_generator.plant_no --;
}


// bullet creation
bulletTime ++;
if bulletTime > (limit) bulletTime = 0;
if bulletTime > (limit-1) &&  global.game_play == 1
{
	instance_create_layer(x, y, "plants", o_bullets);
	audio_play_sound(snd_shoot, 100, false); // audio
}


// on collision with zombie
if place_meeting(x , y, o_zombie)
{
	plant_health = plant_health - (0.6 * global.game_speed * global.game_play);
}


// plant eaten
if plant_health < 1
{
	instance_destroy(self);
}


// color change
image_blend =  make_color_hsv(15 - (0.15 * plant_health), 128 - (1.25 * plant_health), 255);


