if (!instance_exists(obj_player)) exit;

draw_self();
draw_health = lerp(draw_health, obj_player.myHealth, .25);

var healthLeft = 92 * draw_health / obj_player.maxHealth;

draw_set_color(c_green);
draw_rectangle(x+7, y+7, x+healthLeft, y+17, false);
draw_set_color(c_white);