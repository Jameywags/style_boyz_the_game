switch (mpos)
{
	case 0:
	{
		room_goto_next();
		break;
	}
	case 1:
	{
		room_goto(4);
		break;
	}
	case 2:
	{
		room_goto(8);
		break;
	}
	case 3:
	{
		room_goto(3);
		break;
	}
	case 4:
	{
		game_end();	break;
		break;
	}
	default: break;
}