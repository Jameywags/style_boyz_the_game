/// @description Switch to Jamey
if (boy != JAMEY_ID)
{
	instance_create_depth(x, y, 0, o_boy_change)
	o_boy_change.sprite_index = s_boy_change_Jamey
}
boy = JAMEY_ID;

extra_jump = 1;					//extra jump variable. 1=yes, 0 =no
wall_jump = 0;					//wall jump variable. 1=yes, 0 =no
ground_pound = 0;				//Ground pound variable. 1=yes, 0 =no
sprite = 1;						//Changes sprite set to 1
shot_type = 1;					//Shot type
fall_damage = 0;				//Fall damage asign

sprite_stand = s_jamey;			//Set the standing sprite to Jamey's standing sprite
sprite_run = s_jamey_R;			//Set the running sprite to Jamey's running sprite
sprite_air = s_jamey_A;			//Set the Airborn sprite to Jamey's airborn sprite

if (jump_speed = jump_speed_powerup)				//Cancels powerup if you change boys
{
	jump_speed = jump_speed_normal;
	instance_destroy(o_particle_powerup);
	audio_sound_pitch(mus_first_try_beat, 1);
	audio_sound_pitch(mus_first_try_base, 1);
	audio_sound_pitch(mus_first_try_harm, 1);
}