draw_self();
if (image_index >= (image_number -1))
{	
	draw_set_color(c_white);
	draw_text(obj_player_die.x, obj_player_die.y - 20, "Press ESC to Restart Game.");
	draw_set_color(c_black);
}