scr_robot_roll();

scr_mini_robot();

take_damage = 1;
sprite_stand = s_robot_mad_G;
sprite_roll = s_robot_roll_G;
pre_transition = 1;

if (hp > hp_2) && (hp <= hp_1)						//If hp is within mid range
{
	state = states.green_to_yellow;
	timer = 1;
}