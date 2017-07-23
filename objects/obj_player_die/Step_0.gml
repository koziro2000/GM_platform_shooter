key_escape = keyboard_check(vk_escape);
if (!instance_exists(obj_player))
{
	if (key_escape)
	{	
		game_restart();
	}
}