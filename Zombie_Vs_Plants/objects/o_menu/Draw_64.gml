// menu text
scr_controls();


draw_set_font(fnt_ui);
if global.game_play == 1
{
	draw_set_alpha(0)
}
else
{
	draw_set_alpha(1)
}


if o_global.game_time > 16
{
	draw_text((game_width/2) - tile_size * 8, (tile_size * 08), "Press right click to Resume...");
}
else
{
	draw_text((game_width/2) - tile_size * 8, (tile_size * 08), "Press right click to Start");
}
draw_text((game_width/2) - tile_size * 12, (tile_size * 10), "Click on right side road to add zombie");


draw_set_font(fnt_menu);
draw_set_alpha(1)
draw_text(tile_size * 1, game_height - tile_size * 01, "v1.0.0");
draw_text(game_width - tile_size * 4, game_height - tile_size * 01, "@San2Art");

draw_set_font(fnt_ui);
