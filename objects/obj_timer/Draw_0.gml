draw_set_font(f_gameFont);
draw_set_color(c_red);
draw_text(obj_score.x, obj_score.y + 25, "Infection %: " + string(round_time));
draw_set_color(c_black);