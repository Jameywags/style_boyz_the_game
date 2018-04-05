//Initial Conditions
hsp = 0;			//Horizontal speed
vsp = 0;			//Vertical speed
grv = 0.2;			//Gravity
done = 0;			//Variable used to end code

image_speed = 0;	//Sprite image speed
image_index = 0;

screen_shake(6,60);
audio_play_sound(snd_enemy_dead,10,false);
game_set_speed(30,gamespeed_fps);
with (o_camera) follow = other.id;