scr_collideandmove();
scr_robot_stand();

hsp = 0;
take_damage = 0;
shoot = 1;

if (timer = 1)
{
	alarm_set(2,150);
	timer = 0;
}

o_particle_robot_sparks.spark = 1;