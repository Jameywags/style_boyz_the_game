/// @description Health Bar
draw_set_font(fnt_pause)
draw_text(15,40,"Health:")
draw_healthbar(130,30,350,50,hp/MAX_HP*100,c_black,c_red,c_green,0,true,true);