if (global.pause) exit;

vsp = vsp + grv;


hsp -= hsp_decel*sign(hsp - move_max*move_direction);
if(hsp < (move_max*move_direction + move_speed) && hsp > (move_max*move_direction - move_speed))
{
	hsp = move_max*move_direction;
}



//Horizontal collision
if (place_meeting(x+hsp,y,o_wall))								//Is there a colision where we will be next frame after one more hsp? If so do this?
{
	while (!place_meeting(x+sign(hsp),y,o_wall))				//If a collision is not detected in the direction of movement do this
	{
		x = x + sign(hsp);										//Move one pixel in the direction we are moving
	}
	hsp = -hsp;													
	move_direction *= -1;
}

x = x + hsp;													//Every frame you move right or left the amount walksp is.

//Vertical collision
if (place_meeting(x,y+vsp,o_wall))								//Is there a colision where we will be next frame after one more vsp? If so do this? (Are we on the floor?)
{			
	while (!place_meeting(x,y+sign(vsp),o_wall))				//If a collision is not detected in the direction of movement do this
	{
		y = y + sign(vsp);										//Move one pixel in the direction we are moving
	}
	vsp = 0;													//Set hsp to 0
	
	if (fear_of_heights) && !position_meeting(x + (20) * move_direction, y + (20) + 8, o_wall)			//If checks position infront of enemy move direction and a few pixels down. This down value can be changed, its for wlaking off small ledges and slopes.
	{
		hsp = -hsp;
		move_direction *= -1;
	}
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

if (hsp != 0) image_xscale = sign(hsp) * size;							//Scale horizontaly by multiplier hsp, 1 = normal image, -1 = flip image
image_yscale = size;





