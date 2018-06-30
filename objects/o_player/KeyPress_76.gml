/// @description Switch to Luke
if (boy != LUKE_ID)
{
	instance_create_depth(x, y, 1, o_boy_change)
	o_boy_change.sprite_index = s_boy_change_Luke
}
boy = LUKE_ID;

extra_jump = 0;					//extra jump variable. 1=yes, 0 =no
wall_jump = 1;					//wall jump variable. 1=yes, 0 =no
ground_pound = 0;				//Ground pound variable. 1=yes, 0 =no
sprite = 2;						//Changes sprite set to 2
shot_type = 2;					//Shot type
fall_damage = 0;				//Fall damage asign

sprite_stand = s_luke;			//Set the standing sprite to Luke's standing sprite
sprite_run = s_luke_R;			//Set the running sprite to Luke's running sprite
sprite_air = s_luke_A;			//Set the Airborn sprite to Luke's airborn sprite

if (jump_speed = jump_speed_powerup)				//Cancels powerup if you change boys
{
	jump_speed = jump_speed_normal;
	instance_destroy(o_particle_powerup);
	audio_sound_pitch(mus_first_try_beat, 1);
	audio_sound_pitch(mus_first_try_base, 1);
	audio_sound_pitch(mus_first_try_harm, 1);
}