switch (mpos)
{
	case 0:
	{
		global.pause = 0;
		break;
		
	}
	case 1:
	{
		global.pause = 0;
		with (o_pause)
		room_goto(0);
		break;
	}
	case 2:
	{
		game_restart();
		room_goto(1);
		global.pause = 0;
		break;
	}
	case 3:
	{
		break;
	}
	case 4: game_end();	break;
	default: break;
}