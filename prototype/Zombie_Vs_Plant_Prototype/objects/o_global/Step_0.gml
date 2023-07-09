// import
scr_controls();


// wave time
game_time = game_time + (1 * global.game_play);
if game_time > (6000 * global.game_speed)
{
	global.game_speed ++;
}


// in-game keys
if key_r game_restart();
if key_p game_resume = !game_resume;
if game_resume == true
{
	global.game_play = 1;
}
else
{
	global.game_play = 0;
}
