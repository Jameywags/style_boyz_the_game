
with (other)							//In the collision event, other reference what the bullet collides with
{
	
	hp -= o_bullet.atk_damage;								//Subtracts atk_damage from hp
	flash = 3;							//Sets flash to 3
	hit_from = other.direction;			//Other inside the with statments references the bullet...
										//...Sets hit_from to thedirection of the bullet
}

instance_destroy();						//Destroys the bullet