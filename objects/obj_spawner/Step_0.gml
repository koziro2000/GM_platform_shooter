/// @description Spawn Enemies
if (!instance_exists(obj_dron_enemy)) 
{
	repeat(numberOfEnemies) 
	{
		instance_create_layer(x, y, "Enemies", obj_dron_enemy);
	}
	numberOfEnemies *= 2;
}

if (numberOfEnemies >= maxNumberOfEnemies)
{
	if (room == room_last)
	{
		game_restart();
	}
	else
	{
		room_goto_next();
	}
}