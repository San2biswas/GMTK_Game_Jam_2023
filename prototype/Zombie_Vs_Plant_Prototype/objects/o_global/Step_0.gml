// import
scr_controls();


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
