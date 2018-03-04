//Colide and move code


//Gravity
vsp = vsp + grv;


//Horizontal collision
if (place_meeting(x+hsp,y,o_wall))								//Is there a colision where we will be next frame after one more hsp? If so do this?
{
	while (!place_meeting(x+sign(hsp),y,o_wall))				//If a collision is not detected in the direction of movement do this
	{
		x = x + sign(hsp);										//Move one pixel in the direction we are moving
	}												
	hsp = -hsp;
}

x = x + hsp;													//Every frame you move right or left the amount walksp is.


//Vertcal collision
if (place_meeting(x,y+vsp,o_wall))								//Is there a colision where we will be next frame after one more vsp? If so do this? (Are we on the floor?)
{			
	while (!place_meeting(x,y+sign(vsp),o_wall))				//If a collision is not detected in the direction of movement do this
	{
		y = y + sign(vsp);										//Move one pixel in the direction we are moving
	}
	vsp = 0;													//Set hsp to 0
	
}

y = y + vsp;	



//Animation
	image_speed = 1;											//Image speed multiplier set to 1
	if (hsp ==0)							//If we are not moving, do this
	{
		sprite_index = (sprite_stand);								//Set sprite to standing sprite
	}
	else 										//If we are moving, do this
	{
		sprite_index = (sprite_roll);								//Set sprite to running sprite
	}

if (hsp != 0) image_xscale = sign(hsp)							//Scale horizontaly by multiplier hsp, 1 = normal image, -1 = flip image