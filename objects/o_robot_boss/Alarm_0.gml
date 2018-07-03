if (state = states.green) || (state = states.red)
{
	instance_create_layer(x,y,"boss_attacks",o_mini_robot);
	audio_play_sound(snd_mini_robot_drop,0,0);
	drop = 1;
}