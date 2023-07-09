image_alpha = image_alpha - 0.002;
if image_alpha < (0.4 * (global.game_speed/1.5))
{
	instance_destroy(self);
}
