if (instance_exists(o_player))
{
	if (round(o_player.y + (o_player.sprite_height/2)) > y) || (o_player.key_down)		//if player is below platform. height/2 takes from the center origin down to the feet. Round makes it work nice. Or if down arrow is pressed.
	{
		 mask_index = -1;					//No sprite collision, can pass through.
	}
	else
	{
		mask_index = s_platform;			//Sprite, with collision.
	}
}

if (move = true)
{
	//Vertical Movement
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
	
	//Horizontal Movement
	if (x > x_left) && (hsp < 0)		//Lower then top limit, moving up -> keep moving up
	{
		x = x + hsp;
	}
	if (x <= x_left) && (hsp < 0)	//At top limit, moving up -> start moving down
	{
		hsp = -hsp;
	}
	if (x < x_right) && (hsp > 0)		//Higher then bottom limit, moving down -> keep moving down
	{
		x = x + hsp;
	}
	if (x >= x_right) && (hsp > 0)	//At bottom limit, moving down -> start moving up
	{
		hsp = -hsp;
	}
}