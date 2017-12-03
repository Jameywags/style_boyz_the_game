//Initial conditions
hp = 3;				//Set initial hp to 3
hit_delay = 0;		//dellay time for being hit again

hsp = 0;			//Horizontal speed
vsp = 0;			//Vertical speed

grv = .4;			//Gravity
max_vsp = 9;		//Max vertical speed

move_speed = 0.25;	//initial move speed
max_hsp = 5;		//cap to your speed left or right
hsp_decel = 0.35;	//horizontal deceleration constant

jump_speed = 9		//Jump speed
jumps = 0			//number of jumps available
jumps_max = 1		//number of jumps allowed max
wall_jump_vsp = 7	//Speed given vertically by wall jump
wall_jump_hsp = 7	//Speed given horizontally by wall jump
wall_slide_vsp =2	//Vertical speed when wall sliding

//Variables to be assigned
extra_jump = 0;		//Initial value
wall_jump = 0;		//Initial value
boy = 1				//Initial value
sprite = 1			//Initial value
firing_delay = 0;	//Initial value
dir_looking = 1;	// The direction we are looking
ground_pound = 0;	//Initial value
wall_break = 0;		//Initial Value