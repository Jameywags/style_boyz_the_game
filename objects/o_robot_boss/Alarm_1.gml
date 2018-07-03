if (state = states.yellow) || (state = states.red)
{
	audio_play_sound(snd_boss_shoot, 0, 0);
	instance_create_layer(x+24,y-10,"boss_attacks",o_robot_laser);
	instance_create_layer(x-24,y-10,"boss_attacks",o_robot_laser);
	shoot = 1;
}