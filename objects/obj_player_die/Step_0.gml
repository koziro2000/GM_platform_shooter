scr_get_user_input();
if (!instance_exists(obj_player))
{
	if (key_escape)
	{	
		game_restart();
	}
}