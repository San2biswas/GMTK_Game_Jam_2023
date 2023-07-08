bulletTime ++;
if bulletTime > limit bulletTime = 0;

// bullet creation
if bulletTime > (limit-1)
{
	instance_create_layer(x, y, "instance", o_bullets);
}
