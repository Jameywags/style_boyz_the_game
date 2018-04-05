if (done == 0)														//If done variable equals 0
{
	vsp = vsp + grv;												//Vertical speed affected by gravity

	//Horizontal collision
	if (place_meeting(x+hsp,y,o_wall))								//Is there a colision where we will be next frame after one more hsp? If so do this?
	{
		while (!place_meeting(x+sign(hsp),y,o_wall))				//If a collision is not detected in the direction of movement do this
		{
			x = x + sign(hsp);										//Move one pixel in the direction we are moving
		}
		hsp = 0;													//Set hsp to 0
	}

	x = x + hsp;													//Every frame you move right or left the amount walksp is.

	//Vertical collision
	if (place_meeting(x,y+vsp,o_wall))								//Is there a colision where we will be next frame after one more hsp? If so do this?
	{	
		if (vsp > 0)												//If vsp is greater then 0, falling
		{
			done = 1;												//Set done variable to 1, this will stop looping code
			image_index = 1;										//Set sprite to image 1
			alarm[0] = 60;
		}
		while (!place_meeting(x,y+sign(vsp),o_wall))				//If a collision is not detected in the direction of movement do this
		{
			y = y + sign(vsp);										//Move one pixel in the direction we are moving
		}
		vsp = 0;													//Set hsp to 0
	}

	y = y + vsp;
}