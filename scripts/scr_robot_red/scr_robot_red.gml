scr_robot_roll();

scr_robot_laser();
scr_mini_robot();

take_damage = 1;
sprite_stand = s_robot_stand_R;
sprite_roll = s_robot_roll_R;

if (hp <= 0)
{
	state = states.explode;
	timer = 1;
}