//===== similar code for all 3 ================================

//Get player input
key_left = keyboard_check(vk_left);								//Will tell us if we push left arrow key. Virtual keyboard
key_right = keyboard_check(vk_right);							//Will tell us if we push right arrow key. Virtual keyboard
key_left_pressed = keyboard_check_pressed(vk_left);				//Will tell us if we push left arrow key. Virtual keyboard
key_right_presses = keyboard_check_pressed(vk_right);			//Will tell us if we push right arrow key. Virtual keyboard
key_jump = keyboard_check_pressed(vk_space);					//Will check if we press 
key_jump_held = keyboard_check(vk_space);						//Will tell us if we hold jump key
key_attack = keyboard_check_pressed(ord("Z"));					//Will tell if we press attack
key_down = keyboard_check_pressed(vk_down);						//Stop hsp when down key is pressed. *Dumb fix for slow walking bug
key_one = keyboard_check_pressed(ord("1"));						//Will check if we press "1"
key_two = keyboard_check_pressed(ord("2"));						//Will check if we press "2"
key_three = keyboard_check_pressed(ord("3"));					//Will check if we press "3"
key_attack = keyboard_check_pressed(ord("Z"));


//Firing bullets
firing_delay -= 1
if (key_attack) && (firing_delay < 0) 
{
	firing_delay = 10;
	with (instance_create_layer(x+10,y,"Bullets",o_bullet))
	{
		direction = 0;
		image_xscale = 1;
		speed = 5;
	}
}



//Changing between boys
if (key_one)													//If key one is pressed
{
	boy = 1;														//Set boy to 1
}
if (key_two)													//If key two is pressed
{
	boy = 2;													//Set boy to 2
}
if (key_three)													//If key three is pressed
{
	boy = 3;													//Set boy to 3
}

//Sprites
if (sprite = 1)													//If sprite set 1 is chosen (Jamey)
{
	sprite_stand = s_jamey;										//Set the standing sprite to Jamey's standing sprite
	sprite_run = s_jamey_R;										//Set the running sprite to Jamey's running sprite
	sprite_air = s_jamey_A;										//Set the Airborn sprite to Jamey's airborn sprite
}

if (sprite = 2)													//If sprite set 2 is chosen (Luke)
{
	sprite_stand = s_luke;										//Set the standing sprite to Luke's standing sprite
	sprite_run = s_luke_R;										//Set the running sprite to Luke's running sprite
	sprite_air = s_luke_A;										//Set the Airborn sprite to Luke's airborn sprite
}
if (sprite = 3)													//If sprite set 3 is chosen (Himat)
{
	sprite_stand = s_himat;										//Set the standing sprite to Himat's standing sprite
	sprite_run = s_himat_R;										//Set the running sprite to Himat's running sprite
	sprite_air = s_himat_A;										//Set the Airborn sprite to Himat's airborn sprite
}
//Caculate movement
var move = key_right - key_left;								//Just right returns 1, just left returns -1, both or none returns 0

if (key_down)													//If down key is pressed. *Dumb fix for slow walking bug
{
	hsp = 0;													//Set hsp to 0. *Dumb fix for slow walking bug
}


//Horizontal acceleration coast
if (hsp < max_hsp) && (hsp > -max_hsp)							//If hsp is less then the max hsp
{
    hsp += move * move_speed;									//hsp equals itself plus move speed every frame. Accelerating
}
else if (hsp = max_hsp)											//If hsp equals max right
{
    if (key_right)												//If right is held
    {
        hsp = max_hsp;											//Continue moving at max speed
    }
}
else if (hsp = -max_hsp)										//If hsp equals max left
{
    if (key_left)												//If left is held
    {
        hsp = -max_hsp;											//Continue moving at max speed
    }
}
//Horizontal acceleration with force opposite direction
if (hsp > 0) && (place_meeting(x,y+1,o_wall))					//If hsp is greater then zero, moving right, and on the ground
{
	if (move == 0)												//If no direction is pushed
	{
		hsp -= hsp_decel;										//decelerate at hsp_decel
	}
	if (move == -1)												//If left direction is pushed
	{
		hsp -= (hsp_decel * 2);									//decelerate at hsp_decel x multiplier
	}
}

if (hsp < 0) && (place_meeting(x,y+1,o_wall))					//If hsp is less then zero, moving left, and on the ground
{
	if (move == 0)												//If no direction is pushed
	{
		hsp += hsp_decel;										//decelerate at hsp_decel
	}
	if (move == 1)												//If right direction is pushed
	{
		hsp += (hsp_decel * 2);									//decelerate at hsp_decel x multiplier
	}
}
//Horizontal acceleration in air
if (hsp > 0) && !(place_meeting(x,y+1,o_wall))					//If hsp is greater then zero, moving right, and on the ground
{
	if (move == 0)												//If no direction is pushed
	{
		hsp -= hsp_decel / 3;									//decelerate at hsp_decel
	}
	if (move == -1)												//If left direction is pushed
	{
		hsp -= (hsp_decel/2);									//decelerate at hsp_decel x multiplier
	}
}

if (hsp < 0) && !(place_meeting(x,y+1,o_wall))					//If hsp is less then zero, moving left, and on the ground
{
	if (move == 0)												//If no direction is pushed
	{
		hsp += hsp_decel / 3;									//decelerate at hsp_decel
	}
	if (move == 1)												//If right direction is pushed
	{
		hsp += (hsp_decel/2);									//decelerate at hsp_decel x multiplier
	}
}
//slowing down if going faster then max
if (abs(hsp) > max_hsp)											//if the absolute value of hsp is greater then max hsp
{
	hsp -= hsp_decel*sign(hsp);									//Deccelerate in oposite direction of hsp
}

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
if !(extra_jump)												//If extra jump variable is off
{
	jumps_max = 1;												//Set max jump number
}


//Wall Jumps
if (wall_jump)																	//Variable to give wall jump ability
{
	if (place_meeting(x+1,y,o_wall)) && (!place_meeting(x-1,y,o_wall))			//If wall is right but not left
	{
	    if (key_jump) && (!place_meeting(x,y+1,o_wall))// && (key_right)		//If press jump and not on ground
	    {
			vsp = 0;															//Initially set vsp to 0
	        vsp -= wall_jump_vsp;												//Up speed
	        hsp -= wall_jump_hsp;												//Speed away from way
	    }
	}


	if (place_meeting(x-1,y,o_wall)) && (!place_meeting(x+1,y,o_wall))			//If wall is left but not right
	{
	    if (key_jump) && (!place_meeting(x,y+1,o_wall))// && (key_left)			//If press jump and not on ground
	    {
			vsp = 0;															//Initially set vsp to 0
	        vsp -= wall_jump_vsp;												//Up speed
	        hsp += wall_jump_hsp;												//Speed away from way
	    }
	}
//Wall Slides Left
    if (key_left = 1) && (vsp > 0) && (place_meeting(x-1,y,o_wall)) && (!place_meeting(x,y+1,o_wall))	//If pushing left, moving down, wall left, and no wall below
    {
		vsp = wall_slide_vsp;																			//Set vsp to wall slide vsp
    }
//Wall Slides Right
    if (key_right = 1) && (vsp > 0) && (place_meeting(x+1,y,o_wall)) && (!place_meeting(x,y+1,o_wall))	//If pushing right, moving down, wall right, and no wall below
    {
        vsp = wall_slide_vsp;																			//Set vsp to wall slide vsp
    }
}


//===== Code for each boy to assign variables =======================

if (boy == 1)													//If boy one is chosen (Jamey)
{
	extra_jump = 1;												//extra jump variable. 1=yes, 0 =no
	wall_jump = 0;												//wall jump variable. 1=yes, 0 =no
	sprite = 1;													//Changes sprite set to 1
	o_bullet.bullet_range = 150;
}

if (boy == 2)													//If boy two is chosen (Luke)
{
	extra_jump = 0;												//extra jump variable. 1=yes, 0 =no
	wall_jump = 1;												//wall jump variable. 1=yes, 0 =no
	sprite = 2;													//Changes sprite set to 2
	o_bullet.bullet_range = 100;
}

if (boy == 3)													//If boy three is chosen (Himat)
{
	extra_jump = 0;												//extra jump variable. 1=yes, 0 =no
	wall_jump = 0;												//wall jump variable. 1=yes, 0 =no
	sprite = 3;													//Changes sprite set to 3
	o_bullet.bullet_range = 50;
}