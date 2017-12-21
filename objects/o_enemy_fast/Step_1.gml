//Initiates death stuff
if (hp <= 0)												//if hp is less then or equal to 0
{
	audio_play_sound(snd_enemy_dead, 0, 0);
	with (instance_create_layer(x,y,layer,o_enemy_D1))		//Create the enemy death object
	{
		direction = other.hit_from;							//Set direction to the hit_from variable from o_enemy_D
		hsp = lengthdir_x(3,direction);						//Set hsp to 3 in direction
		vsp = lengthdir_y(3,direction) - 2;					//Set vsp to 3 in direction with at least a -2 vsp
		image_xscale = sign(hsp);							//Set image scale to sign of hsp
		if (sign(hsp) != 0) image_xscale = sign(hsp);		//In case enemy is shot from directly above
	}
	instance_destroy();										//Destroy the enemy object
}