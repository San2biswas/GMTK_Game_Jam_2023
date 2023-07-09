// temp keyboard shortcut
key_r = keyboard_check_pressed(ord("R"));
key_p = keyboard_check_pressed(ord("P"));

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
