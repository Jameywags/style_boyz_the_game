with(o_player)
{
	if (boy = HIMAT_ID)
	{
	jump_speed = jump_speed_powerup;
	instance_create_layer(x ,y , "Extra", o_particle_powerup)
	audio_play_sound(snd_powerup, 0, 0);
	alarm[0] = audio_sound_length(snd_powerup)*60;
	}
	else
	{
	jump_speed = jump_speed_powerdown;
	instance_create_layer(x ,y , "Extra", o_particle_powerdown)
	audio_play_sound(snd_powerdown, 0, 0);
	alarm[0] = audio_sound_length(snd_powerdown)*60;
	}
}
instance_destroy();