if (global.pause) exit;

vsp = vsp + grv;



//if(hsp < (move_max*move_direction + move_speed) && hsp > (move_max*move_direction - move_speed))
//{
//	hsp = move_max*move_direction;
//}



//Horizontal collision
if (place_meeting(x+hsp,y,o_wall))		//|| place_meeting(x+hsp,y,o_player) || place_meeting(x+hsp,y,o_enemy)			//Is there a colision where we will be next frame after one more hsp? If so do this?
{
	while (!place_meeting(x+sign(hsp),y,o_wall))				//If a collision is not detected in the direction of movement do this
	{
		x = x + sign(hsp);										//Move one pixel in the direction we are moving
	}
	hsp = -hsp/8;

	move_direction *= -1;
}

if(abs(hsp) < 0.5) {
	hsp = 0;
}
	
x = x + hsp;													//Every frame you move right or left the amount walksp is.

//Vertical collision
if (place_meeting(x,y+vsp,o_wall))								//Is there a colision where we will be next frame after one more vsp? If so do this? (Are we on the floor?)
{			
	hsp -= hsp_decel*sign(hsp - move_max*move_direction);
	while (!place_meeting(x,y+sign(vsp),o_wall))				//If a collision is not detected in the direction of movement do this
	{
		y = y + sign(vsp);										//Move one pixel in the direction we are moving
	}
	vsp = 0;													//Set hsp to 0
	
}

y = y + vsp;	