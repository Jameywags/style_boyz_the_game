// CONSTANTS
LUKE_ID  = 2;
JAMEY_ID = 1;
HIMAT_ID = 3;
MAX_HP = 3;			//Set max hp
max_vsp = 12;		//Max vertical speed
max_hsp = 5;		//cap to your speed left or right

// INITIAL CONDITIONS (BOY)

boy = JAMEY_ID
sprite = JAMEY_ID

sprite_stand = s_jamey;			//Set the standing sprite to Jamey's standing sprite
sprite_run = s_jamey_R;			//Set the running sprite to Jamey's running sprite
sprite_air = s_jamey_A;			//Set the Airborn sprite to Jamey's airborn sprite

extra_jump = 1;					//extra jump variable. 1=yes, 0 =no
wall_jump = 0;					//wall jump variable. 1=yes, 0 =no
ground_pound = 0;				//Ground pound variable. 1=yes, 0 =no
sprite = 1;						//Changes sprite set to 1
fall_damage = 0;				//Fall damage asign

hp = 3;				//Set initial hp to 3

// KINEMATICS

hsp = 0;			//Horizontal speed
vsp = 0;			//Vertical speed

grv = .4;			//Gravity

move_speed = 0.25;	//initial move speed
hsp_decel = 0.35;	//horizontal deceleration constant

jump_speed_normal = 10		//Jump speed
jump_speed_powerup = 12		//Jump speed powerup
jump_speed_powerdown = 6	//Jump speed powerdown
jump_speed = jump_speed_normal
jumps = 0			//number of jumps available
jumps_max = 1		//number of jumps allowed max
wall_jump_vsp = 7	//Speed given vertically by wall jump
wall_jump_hsp = 7	//Speed given horizontally by wall jump
wall_slide_vsp =2	//Vertical speed when wall sliding

// FIGHTING 

hit_delay = 0;		//dellay time for being hit again
flash = 0;			//Initial flash set to 0

// MISC VARIABLES

firing_delay = 0;	//Initial value
dir_looking = 1;	//The direction we are looking
ground_pound = 0;	//Initial value
push_back = 0;		//Initial value 
wall_break = 0;		//Initial value
shot_type = 0;		//Initial value
fall_damage = 0;	//Initial value

pause_id = -1;		//Initial value

