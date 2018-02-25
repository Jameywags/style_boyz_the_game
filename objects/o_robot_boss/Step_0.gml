vsp = vsp + grv;
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




// Stages of battle
if (hp > 33) && (hp <= 66)						//If hp is within mid range
{
	stand_sprite = s_robot_stand_Y
	move_sprite = s_robot_move_Y
}

if (hp <= 33)									//If hp is within low range
{
	stand_sprite = s_robot_stand_R
	move_sprite = s_robot_move_R
}

if (hp <= 0)
{
	audio_play_sound(snd_enemy_dead, 0, 0);
	screen_shake(3, 15)
	instance_destroy();
}


sprite_index = stand_sprite