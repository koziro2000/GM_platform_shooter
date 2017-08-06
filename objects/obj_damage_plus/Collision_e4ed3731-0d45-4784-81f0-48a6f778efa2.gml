if (instance_exists(obj_player))
{
	with(obj_player)
	{
		if (obj_player.myCurrentGunId > 0)
		{
			with (obj_player.myCurrentGunId)
			{
				damage += 0.5;
			}
		}
	}
}
instance_destroy();