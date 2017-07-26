if (!instance_exists(obj_player)) exit;
var offset_x = - 30;
var offset_y = -30;
var sizeScale = 5;
cX = obj_player.x + offset_x;
cY = obj_player.y + offset_y;

draw_health = lerp(draw_health, obj_player.myHealth, .25);
var healthLeft = 92 * draw_health / obj_player.maxHealth;
draw_set_color(c_green);
draw_rectangle(cX, cY, cX + healthLeft/sizeScale, cY + 2, false);
draw_set_color(c_white);