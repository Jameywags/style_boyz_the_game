
with (other)							//In the collision event, other reference what the bullet collides with
{
	if (other.hit ==0)
	{
		hp -= o_bullet.atk_damage;								//Subtracts atk_damage from hp
	}
	flash = 3;												//Sets flash to 3
	hit_from = other.direction;								//...Sets hit_from to thedirection of the bullet
	audio_play_sound(snd_enemy_hit, 0, 0);

	if (other.push_back = 1)
		{
			hsp = lengthdir_x(other.push_back_speed,other.direction);
			vsp = -3
		}

}
if (o_player.shot_type == 2) || (o_player.shot_type == 3)
{
	instance_destroy();						//Destroys the bullet
}
if (o_player.shot_type == 1)
{
	hit = 1
}
if (hit == 1)
