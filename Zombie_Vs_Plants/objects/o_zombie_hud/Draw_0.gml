draw_self();

draw_set_font(fnt_menu)
if global.zom_age != 0
{
	draw_text(x - tile_size * 1.5, y + tile_size, "Cooldown")
}
draw_set_font(fnt_ui)
