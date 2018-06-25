if (audio_sound_get_gain(mus_first_try) <= 0)
{
	audio_stop_sound(mus_first_try);
}

if (dead = true)
{
	audio_sound_gain(mus_first_try, 0, 2000);
	audio_play_sound(mus_take_me_home, 1000, false);
	audio_sound_gain(mus_take_me_home, 0, 0);
	audio_sound_gain(mus_take_me_home, 1, 3500);
	dead = false
}

