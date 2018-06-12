hp_bar_top = 150;
hp_bar_bot = 680;
stage_bar_size = 3;

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_GUI);
draw_healthbar(70, hp_bar_bot, 90, hp_bar_top, hp/max_hp*100, c_black, c_red, c_green, 2, true,true);
draw_text(20,700,"Boss Health:");

// Stage bar health divider
draw_set_color(c_white);
draw_rectangle(65, hp_bar_top + (hp_bar_bot - hp_bar_top) * (2/3), 95, hp_bar_top + (hp_bar_bot - hp_bar_top) * (2/3) + stage_bar_size, false)	// top of health bar, + 2/3 of health bar height.
draw_rectangle(65, hp_bar_top + (hp_bar_bot - hp_bar_top) * (1/3), 95, hp_bar_top + (hp_bar_bot - hp_bar_top) * (1/3) + stage_bar_size, false)
