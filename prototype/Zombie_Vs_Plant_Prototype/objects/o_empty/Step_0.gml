// destroy after plant
if place_meeting(x, y, o_plant) || place_meeting(x, y, o_sunflower)
{
	instance_destroy(self);
}
