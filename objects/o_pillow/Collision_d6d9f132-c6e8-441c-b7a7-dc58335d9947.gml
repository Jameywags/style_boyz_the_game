with(o_player)
{
	if (boy = HIMAT_ID)
	{
	jump_speed = jump_speed_powerup;
	//sprite_index = s_player_b;			//Powerup sprite
	alarm[0] = 300;
	}
	else
	{
	jump_speed = jump_speed_powerdown;
	//sprite_index = s_player_b;			//Powerup sprite
	alarm[0] = 300;
	}
}
instance_destroy();