/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (hp <= 0)												//if hp is less then or equal to 0
{
	audio_play_sound(snd_enemy_dead, 0, 0);
	screen_shake(3, 15)
	instance_destroy();
}