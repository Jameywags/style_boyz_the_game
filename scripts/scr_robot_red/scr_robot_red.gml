scr_robot_roll();

scr_robot_laser();
scr_mini_robot();

take_damage = 1;
sprite_stand = s_robot_mad_R;
sprite_roll = s_robot_roll_R;

pre_transition = 1;

if (hp <= 0)
{
	state = states.red_to_explode;
	timer = 1;
}
