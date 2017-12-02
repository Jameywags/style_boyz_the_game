if (global.pause) exit;

sprite_stand = s_enemy;										//Set the standing sprite to enemy's standing sprite
sprite_run = s_enemy_R;										//Set the running sprite to enemy's running sprite
sprite_air = s_enemy_A;										//Set the Airborn sprite to enemy's airborn sprite
sprite_dead = s_enemy_D;									//Set the dead sprite to enemy's dead sprite

vsp = vsp + grv;

if place_meeting (x, y-5, o_player)
{
	if (o_player.y < y-48) && (o_player.vsp > 0)
	{
		with (o_player) vsp = -jump_speed
		hp --;
	}
	else
	{
		with (o_player)
		{
			if (hit_delay = 0)			//If hit delay is at 0
			{
				hp --;					//subtract 1 from hp
				hit_delay = 50;		//Sets hit delay to 300
				vsp = -5;				//Make the player jump up a little
			}
		}
	}
}

//Horizontal collision
if (place_meeting(x+hsp,y,o_wall))								//Is there a colision where we will be next frame after one more hsp? If so do this?
{
	while (!place_meeting(x+sign(hsp),y,o_wall))				//If a collision is not detected in the direction of movement do this
	{
		x = x + sign(hsp);										//Move one pixel in the direction we are moving
	}
	hsp = -hsp;													//Set hsp to 0
}

x = x + hsp;													//Every frame you move right or left the amount walksp is.

//Vertical collision
if (place_meeting(x,y+vsp,o_wall))								//Is there a colision where we will be next frame after one more hsp? If so do this?
{			
	while (!place_meeting(x,y+sign(vsp),o_wall))				//If a collision is not detected in the direction of movement do this
	{
		y = y + sign(vsp);										//Move one pixel in the direction we are moving
	}
	vsp = 0;													//Set hsp to 0
}

y = y + vsp;													//Every frame you move right or left the amount walksp is.
	
//Animation
if (!place_meeting(x,y+1,o_wall))				//Check if we are not on the ground
{
	sprite_index = sprite_air;									//Change sprite to airborn sprite
	image_speed = 0;											//animation speed set. Multiply by speed in sprite.
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;	//If falling use image 1, if not use image 0
	
}
else															//If we are on the ground, do this
{
	image_speed = 1;											//Image speed multiplier set to 1
	if (hsp ==0)							//If we are not moving, do this
	{
		sprite_index = (sprite_stand);								//Set sprite to standing sprite
	}
	else 										//If we are moving, do this
	{
		sprite_index = (sprite_run);								//Set sprite to running sprite
	}
}

if (hsp != 0) image_xscale = sign(hsp);							//Scale horizontaly by multiplier hsp, 1 = normal image, -1 = flip image






