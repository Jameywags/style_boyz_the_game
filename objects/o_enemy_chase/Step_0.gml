if (global.pause) exit;



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
	
	if (fear_of_heights) && !position_meeting(x + (sprite_width/4), y + (sprite_height/2) + 8, o_wall)			//If checks position infront of enemy move direction and a few pixels down. This down value can be changed, its for wlaking off small ledges and slopes.
	{
		hsp = -hsp;
		move_direction *= -1;
	}
}

y = y + vsp;													//Every frame you move right or left the amount walksp is.
	
switch (state)
{
	case e_state.idle:
	{
		hsp = 0;
		vsp = vsp + grv;
		if (distance_to_object(o_player) < 96) state = e_state.chase;
	}
	break;
	case e_state.chase:
	{
		dir = sign(o_player.x - x);
		hsp = move_direction * 2;
		vsp = vsp + grv;
		y = y + vsp;
		if (distance_to_object(o_player) > 128) state = e_state.idle;
	}
	break;	
}

