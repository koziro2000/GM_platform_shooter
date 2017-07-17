var dir = point_direction(x, y, mouse_x, mouse_y);

draw_self();
draw_sprite_ext(spr_gun, 0, x, y, image_xscale, 1, 0, image_blend, image_alpha);
