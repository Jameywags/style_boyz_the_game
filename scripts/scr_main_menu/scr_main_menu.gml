switch (mpos)
{
	case 0:
	{
		room_goto_next();
		break;
	}
	case 1:
	{
		break;
	}
	case 2:
	{
		room_goto(2);
		break;
	}
	case 3:
	{
		break;
	}
	case 4: game_end();	break;
	default: break;
}