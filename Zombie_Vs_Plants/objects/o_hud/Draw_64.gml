// hud text

draw_set_font(fnt_ui);

//draw_text((tile_size * 01), (tile_size * 01), ("sun			: " + string(global.sun_no)));
draw_text((game_width/2) - tile_size * 4, (tile_size * 01), ("Wave : " + string(global.game_speed)));
