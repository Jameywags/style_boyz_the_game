var halfw = w * 0.5;

//Draw the box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border, y-h-(border*2), x+halfw+border, y, round_radius, round_radius, false);
draw_sprite(s_marker, 0, x, y);
draw_set_alpha(1);

//Draw text
scr_draw_set_text(c_white, fnt_text_bubble, fa_center, fa_top)
draw_text(x, y-h-border, text_current);