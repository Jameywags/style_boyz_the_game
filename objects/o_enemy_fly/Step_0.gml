

//Motion anf limits
if (y > y_top) && (vsp < 0)		//Lower then top limit, moving up -> keep moving up
{
	y = y + vsp;
}
if (y <= y_top) && (vsp < 0)	//At top limit, moving up -> start moving down
{
	vsp = -vsp;
}
if (y < y_bot) && (vsp > 0)		//Higher then bottom limit, moving down -> keep moving down
{
	y = y + vsp;
}
if (y >= y_bot) && (vsp > 0)	//At bottom limit, moving down -> start moving up
{
	vsp = -vsp;
}

if (vsp < 1) {sprite_index = s_enemy_fly_up;}
if (vsp > 1) {sprite_index = s_enemy_fly_down;}





//Animation
image_speed = 1;	
if (hsp != 0) image_xscale = sign(hsp) * size;							//Scale horizontaly by multiplier hsp, 1 = normal image, -1 = flip image
image_yscale = size;