
with (other)							//In the collision event, other reference what the bullet collides with
{
	hp -= o_bullet.atk_damage;								//Subtracts atk_damage from hp
	
	flash = 3;												//Sets flash to 3
	hit_from = other.direction;								//...Sets hit_from to thedirection of the bullet
	audio_play_sound(snd_enemy_hit, 0, 0);

	if (other.push_back = 1)
	{
			hsp = lengthdir_x((other.push_back_speed)/weight,other.direction);
			vsp = -(other.push_back_speed*.6)/weight;
	}
}

instance_destroy();						//Destroys the bullet