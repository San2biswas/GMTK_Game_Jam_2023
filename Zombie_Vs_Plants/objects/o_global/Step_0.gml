// import
scr_controls();


// wave time
var _limit = 3000;
game_time = game_time + (1 * global.game_play);
if game_time > (_limit * global.game_speed)
{
	global.game_speed ++;
}


// game loose
if game_time > (_limit * 3)
{
	game_restart();
}


// in-game keys
//if key_r game_restart();
if m_m game_end();
if m_r game_resume = !game_resume;
if game_resume == true
{
	global.game_play = 1;
}
else
{
	global.game_play = 0;
}

