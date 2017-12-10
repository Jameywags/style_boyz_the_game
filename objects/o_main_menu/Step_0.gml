var move = 0;
move -= keyboard_check_pressed(vk_up);
move += keyboard_check_pressed(vk_down);

if (move != 0)
{
	audio_play_sound(snd_select_1, 0, 0);
	mpos += move;
	if (mpos < 0) mpos = array_length_1d(menu) - 1;
	if (mpos > array_length_1d(menu) - 1) mpos = 0;
}

var push;
push = keyboard_check_released(vk_enter);

if (push == 1) 
{
	audio_play_sound(snd_select_2, 0, 0);
	scr_main_menu();
}