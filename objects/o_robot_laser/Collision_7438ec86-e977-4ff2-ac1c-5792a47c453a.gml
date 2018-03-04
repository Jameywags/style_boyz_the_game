with (other)
{
	if (hit_delay = 0)			//If hit delay is at 0
	{
		screen_shake(4, 30)
		hp --;					//subtract 1 from hp
		hit_delay = 50;		//Sets hit delay
		flash = hit_delay;			//Sets flash to same length as hit delay
		audio_play_sound(snd_player_hit, 0, 0);
	}
}
instance_destroy();