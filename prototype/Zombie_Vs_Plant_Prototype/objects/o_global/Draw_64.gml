// debug
draw_text((tile_size * 01), (tile_size * 01), ("fps			: " + string(fps_real)));
draw_text((tile_size * 01), (tile_size * 02), ("play		: " + string(global.game_play)));
draw_text((tile_size * 01), (tile_size * 03), ("speed		: " + string(global.game_speed)));
draw_text((tile_size * 01), (tile_size * 04), ("rand x		: " + string(o_generator.rand_x)));
draw_text((tile_size * 01), (tile_size * 05), ("rand y		: " + string(o_generator.rand_y)));
draw_text((tile_size * 01), (tile_size * 06), ("instance	: " + string(instance_count)));
draw_text((tile_size * 01), (tile_size * 07), ("plants		: " + string(o_generator.plant_no)));

