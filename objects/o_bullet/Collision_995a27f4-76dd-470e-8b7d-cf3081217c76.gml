
with (other)							//In the collision event, other reference what the bullet collides with
{
  
	hp -= o_bullet.atk_damage;								//Subtracts atk_damage from hp

	flash = 3;												//Sets flash to 3
	hit_from = other.direction;								//...Sets hit_from to thedirection of the bullet			
	
	if (other.push_back = 1)
		{
			hsp = lengthdir_x(other.push_back_speed,other.direction);
			vsp = -3
		}
}

instance_destroy();						//Destroys the bullet