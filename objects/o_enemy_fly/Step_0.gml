

//Motion anf limits
if (y < y_top) && (vsp > 1)		//Lower then top limit, moving up -> keep moving up
{
	y = y + vsp;
}
if (y >= y_top) && (vsp > 1)	//At top limit, moving up -> start moving down
{
	vsp = -vsp;
}
if (y > y_bot) && (vsp < 1)		//Higher then bottom limit, moving down -> keep moving down
{
	y = y + vsp;
}
if (y <= y_bot) && (vsp < 1)	//At bottom limit, moving down -> start moving up
{
	vsp = -vsp;
}







//Animation
image_speed = 1;	
if (hsp != 0) image_xscale = sign(hsp) * size;							//Scale horizontaly by multiplier hsp, 1 = normal image, -1 = flip image
image_yscale = size;