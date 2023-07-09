draw_set_font(fnt_title);
if global.game_play == 1
{
	draw_set_alpha(0)
}
else
{
	draw_set_alpha(1)
}

draw_text((game_width/2) - (tile_size * 11), (tile_size * 4), " Zombie Vs Plants");


draw_set_font(fnt_ui);
draw_set_alpha(1)

