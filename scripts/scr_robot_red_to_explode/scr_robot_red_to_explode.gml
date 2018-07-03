scr_collideandmove();
scr_robot_stand();

hsp = 0;
take_damage = 0;

if (timer = 1)
{
	alarm_set(2,150);
	timer = 0;
}

if (pre_transition = 1)
{
	audio_play_sound(snd_boss_stage_change, 0, 0);
	audio_play_sound(snd_about_to_blow, 0, 0);
	audio_stop_sound(mus_first_try_beat)
	audio_stop_sound(mus_first_try_base)
	audio_stop_sound(mus_first_try_harm)
	pre_transition = 0;
}