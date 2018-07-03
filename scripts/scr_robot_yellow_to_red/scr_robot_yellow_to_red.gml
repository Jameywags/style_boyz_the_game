scr_collideandmove();
scr_robot_stand();

hsp = 0;
take_damage = 0;
drop = 1;
shoot = 1;

if (timer = 1)
{
	alarm_set(2,150);
	timer = 0;
}

if (pre_transition = 1)
{
	audio_play_sound(snd_boss_stage_change, 0, 0);
	audio_sound_pitch(mus_first_try_beat, 1.2);
	audio_sound_pitch(mus_first_try_base, 1.2);
	audio_sound_pitch(mus_first_try_harm, 1.2);
	pre_transition = 0;
}