if (take_damage = 1)
{
	hp -= o_bullet.atk_damage;								//Subtracts atk_damage from hp
	flash = 3;												//Sets flash to 3
	audio_play_sound(snd_enemy_hit, 0, 0);
}

if (state = states.start)
{
	state = states.start_to_green;
	timer = 1;
}

with (other)
	{
		instance_destroy();
	}