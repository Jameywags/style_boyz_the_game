draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_GUI)
draw_healthbar(130,30,350,50,hp/MAX_HP*100,c_black,c_red,c_green,0,true,true);
draw_text(15,40,"Health:")


//Draw coin GUI
draw_set_font(fnt_GUI);

var _w = display_get_gui_width();

//draw coin sprite
draw_sprite(s_coin, 0, _w - 15, 15 + 7);

//color
draw_set_color(make_color_rgb(255, 242, 0));

//draw coin text
draw_set_halign(fa_right);
draw_text(_w - 15*2, 22, coins);
draw_set_halign(fa_left);

draw_set_color(c_white);