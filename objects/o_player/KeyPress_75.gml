/// @description Switch to Himat
if (boy != HIMAT_ID)
{
	instance_create_depth(x, y, 1, o_boy_change)
	o_boy_change.sprite_index = s_boy_change_Himat
}
boy = HIMAT_ID;

extra_jump = 0;					//extra jump variable. 1=yes, 0 =no
wall_jump = 0;					//wall jump variable. 1=yes, 0 =no
ground_pound = 1;				//Ground pound variable. 1=yes, 0 =no
sprite = 3;						//Changes sprite set to 3
shot_type = 3;					//Shot type
fall_damage = 0				//Fall damage asign

sprite_stand = s_himat;			//Set the standing sprite to Himat's standing sprite
sprite_run = s_himat_R;			//Set the running sprite to Himat's running sprite
sprite_air = s_himat_A;			//Set the Airborn sprite to Himat's airborn sprite

if (jump_speed = jump_speed_powerup)				//Cancels powerup if you change boys
{
	jump_speed = jump_speed_normal;
	instance_destroy(o_particle_powerup);
	audio_stop_sound(snd_powerup);
}