scr_collideandmove();
scr_robot_stand();
hsp = 0;
take_damage = 0;
drop = 1;
sprite_stand = s_robot_mad_G;


if (timer = 1)
{
	alarm_set(2,150);
	timer = 0;
}

if (pre_transition = 1)
{
	audio_play_sound(snd_boss_stage_change, 0, 0);
	pre_transition = 0;
}