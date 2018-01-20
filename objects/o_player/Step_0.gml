if (global.pause) exit;

//===== similar code for all 3 ================================

// Check for "go night night" mode
if(hp == 0) {
	instance_create_layer(0,0,"Portal",o_game_over);
	return;
}

//Get player input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));								//Will tell us if we push left arrow key. Virtual keyboard
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));							//Will tell us if we push right arrow key. Virtual keyboard
key_left_pressed = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));				//Will tell us if we push left arrow key. Virtual keyboard
key_right_presses = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));			//Will tell us if we push right arrow key. Virtual keyboard
key_jump = keyboard_check_pressed(vk_space);					//Will check if we press 
key_jump_held = keyboard_check(vk_space);						//Will tell us if we hold jump key
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));						//Will tell if we down
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));							//Will tell if we up
key_attack = keyboard_check_pressed(ord("Z"));

touch_wall_down  = place_meeting(x,y+1,o_wall);
touch_wall_up    = place_meeting(x,y-1,o_wall);
touch_wall_left  = place_meeting(x-1,y,o_wall);
touch_wall_right = place_meeting(x+1,y,o_wall);



//Caculate horizontal movement direction
var move = key_right - key_left;								//Just right returns 1, just left returns -1, both or none returns 0

//Firing bullets
firing_delay = max(firing_delay-1,0);

hit_delay = max(hit_delay-1,0);


//Horizontal acceleration coast

// Set a variable for deceleration based on in air or on ground
curr_decel = hsp_decel
if(!touch_wall_down)
{
	curr_decel /= 3;
}

// Switch will separate between left (-1), right (1) and no motion (0).
switch(move)
{
	// Moving to the left
	case -1:
	{
		if(move == -sign(hsp))
		{
			dir_looking = -1*dir_looking;
			hsp -= curr_decel *2;
		}
		else
		{
			hsp = max(hsp - move_speed, -max_hsp);
		}
		break;
	}
	// No move; Slow down
	case 0:
	{
		hsp -= curr_decel*sign(hsp);
		if(abs(hsp) < move_speed)
		{
			hsp = 0;
		}
		break;
	}
	// Moving to the right
	case 1:
	{
		if(move == -sign(hsp))
		{
			dir_looking = -1*dir_looking;
			hsp += curr_decel * 2;
		}
		else
		{
			hsp = min(hsp + move_speed, max_hsp);
		}
		break;
	}
}

if(move == 0)
	dir_looking = sign(hsp) == 0 ? dir_looking : sign(hsp)
else
	dir_looking = sign(move);


//Variable jump speed	
if (vsp < 0) && (!key_jump_held) vsp = max(vsp, -jump_speed*0.4)	//If you are going up and the jump key is not pressed, change to lower upward speed

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
	while (!place_meeting(x,y+sign(vsp),o_wall))				//If a collision is not detected in the direction of movement do this
	{
		y = y + sign(vsp);										//Move one pixel in the direction we are moving
	}
	vsp = 0;													//Set hsp to 0
}

y = y + vsp;													//Every frame you move right or left the amount walksp is.
	
//Jumping
if (vsp < max_vsp) vsp += grv;									//move by gravity

if (place_meeting(x,y+1,o_wall))								//If wall is right below you 
{
	jumps = jumps_max	;										//Reset number of jumps

}

if (key_jump) && (jumps > 0)									//If you press jump
{
	jumps --;													//Number of jumps left minus one
	vsp = -jump_speed;											//Adding this much speed up
}

//Animation
if (!place_meeting(x,y+1,o_wall)) && !(key_attack)				//Check if we are not on the ground
{
	sprite_index = sprite_air;									//Change sprite to airborn sprite
	image_speed = 0;											//animation speed set. Multiply by speed in sprite.
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;	//If falling use image 1, if not use image 0
	
}
else															//If we are on the ground, do this
{
	image_speed = 1;											//Image speed multiplier set to 1
	if (hsp ==0) && !(key_attack)								//If we are not moving, do this
	{
		sprite_index = (sprite_stand);								//Set sprite to standing sprite
	}
	else if !(key_attack)										//If we are moving, do this
	{
		sprite_index = (sprite_run);								//Set sprite to running sprite
	}
}

if (hsp != 0) image_xscale = sign(hsp);							//Scale horizontaly by multiplier hsp, 1 = normal image, -1 = flip image

//===== variable code to be assigned ============================

//Extra jumps
if (extra_jump)													//If extra jump variable is on
{
	jumps_max = 2;												//Set max jump number
}
else															//If extra jump variable is off
{
	jumps_max = 1;												//Set max jump number
}


//Wall Jumps
if (wall_jump)																	//Variable to give wall jump ability
{
	if (touch_wall_right && !touch_wall_left)			//If wall is right but not left
	{
	    if (key_jump) && (!touch_wall_down)		//If press jump and not on ground
	    {
			vsp = 0;															//Initially set vsp to 0
	        vsp -= wall_jump_vsp;												//Up speed
	        hsp -= wall_jump_hsp;												//Speed away from way
	    }
	}


	if (touch_wall_left && !touch_wall_right)			//If wall is left but not right
	{
	    if (key_jump && !touch_wall_down)		//If press jump and not on ground
	    {
			vsp = 0;															//Initially set vsp to 0
	        vsp -= wall_jump_vsp;												//Up speed
	        hsp += wall_jump_hsp;												//Speed away from way
	    }
	}
//Wall Slides Left
    if (key_left == 1 && vsp > 0 && touch_wall_left && !touch_wall_down)	//If pushing left, moving down, wall left, and no wall below
    {
		vsp = wall_slide_vsp;																			//Set vsp to wall slide vsp
    }
//Wall Slides Right
    if (key_right == 1 && vsp > 0 && touch_wall_right && !touch_wall_down)	//If pushing right, moving down, wall right, and no wall below
    {
        vsp = wall_slide_vsp;																			//Set vsp to wall slide vsp
    }
}

//ground pound
if (ground_pound)
{
	if(!touch_wall_down && key_down)
	{
		hsp = 0;
		vsp = 10;
	}
}

//Fall Damage
if (fall_damage == 1)
{
	if (vsp >= max_vsp)
	{
		if (place_meeting(x,y+vsp,o_wall))	
		{
			if (hit_delay = 0)			//If hit delay is at 0
			{
				hp --;					//subtract 1 from hp
				hit_delay = 50;		//Sets hit delay
				flash = hit_delay;			//Sets flash to same length as hit delay
				audio_play_sound(snd_player_hit, 0, 0);
			}
		}
	}
}