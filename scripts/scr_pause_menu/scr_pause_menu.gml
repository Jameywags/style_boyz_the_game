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
		room_goto_previous()
		room_restart()
		global.pause = 0;
		break;
	}
	case 3:
	{
		audio_play_sound(snd_player_hit, 0, 0);
		break;
	}
	case 4: game_end();	break;
	default: break;
}