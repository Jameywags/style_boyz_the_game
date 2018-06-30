with(o_player)
{
		if jump_speed = jump_speed_normal
		{	
		if (boy = HIMAT_ID)
		{
			jump_speed = jump_speed_powerup;
			instance_create_layer(x ,y , "Extra", o_particle_powerup)
			audio_sound_pitch(mus_first_try_beat, 1.3);
			audio_sound_pitch(mus_first_try_base, 1.3);
			audio_sound_pitch(mus_first_try_harm, 1.3);
			alarm[0] = audio_sound_length(snd_powerup)*60;
		}
		else
		{
			jump_speed = jump_speed_powerdown;
			instance_create_layer(x ,y , "Extra", o_particle_powerdown)
			audio_sound_pitch(mus_first_try_beat, 0.8);
			audio_sound_pitch(mus_first_try_base, 0.8);
			audio_sound_pitch(mus_first_try_harm, 0.8);
			alarm[0] = audio_sound_length(snd_powerdown)*60;
		}
		instance_destroy(other);
	}
}
