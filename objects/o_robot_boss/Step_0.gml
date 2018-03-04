
switch (state)
{
	case states.start: scr_robot_start(); break;
	case states.start_to_green: scr_robot_start_to_green(); break;
	case states.green: scr_robot_green(); break;
	case states.green_to_yellow: scr_robot_green_to_yellow(); break;
	case states.yellow: scr_robot_yellow(); break;
	case states.yellow_to_red: scr_robot_yellow_to_red(); break;
	case states.red: scr_robot_red(); break;
	case states.explode: scr_robot_explode(); break;
}
