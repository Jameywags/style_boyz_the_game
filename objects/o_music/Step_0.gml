//if (audio_sound_get_gain(mus_first_try) <= 0)
//{
//	audio_stop_sound(mus_first_try);
//}

//if (dead = true)
//{
//	audio_sound_gain(mus_first_try, 0, 2000);
//	audio_sound_gain(mus_first_try_beat, 0, 2000);
//	audio_play_sound(mus_take_me_home, 1000, false);
//	audio_sound_gain(mus_take_me_home, 0, 0);
//	audio_sound_gain(mus_take_me_home, 1, 3500);
//	dead = false
//}


if (o_player.boy = o_player.JAMEY_ID)
{
	audio_sound_gain(mus_first_try, 0, 10);
	audio_sound_gain(mus_first_try_beat, 1, 10);
}

if (o_player.boy = o_player.LUKE_ID)
{
	audio_sound_gain(mus_first_try_beat, 0, 10);
	audio_sound_gain(mus_first_try, 1, 10);
}

if (o_player.boy = o_player.HIMAT_ID)
{
	audio_sound_gain(mus_first_try_beat, 0, 10);
	audio_sound_gain(mus_first_try, 1, 10);
}
