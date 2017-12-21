switch (mpos)
{
	case 0:
	{
		room_goto_next();
		break;
	}
	case 1:
	{
		room_goto(3);
		break;
	}
	case 2:
	{
		game_end();	break;
		break;
	}
	default: break;
}