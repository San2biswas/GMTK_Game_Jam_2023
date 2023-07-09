// new cursor position
x = o_generator.mb_x;
y = o_generator.mb_y;


// zombie can be placed
if place_meeting(x, y, o_zom_place) 
{
	global.placeable = 0;
}
else
{
	global.placeable = 1;
}


