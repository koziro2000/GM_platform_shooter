/// @description Spawn Enemies
if (!instance_exists(obj_dron_enemy)) 
{
	repeat(numberOfEnemies) 
	{
		instance_create_layer(x, y, "Enemies", obj_dron_enemy);
	}
	if (numberOfEnemies < maxNumberOfEnemies)
	{
		numberOfEnemies *= 2;
	}
}

if (instance_exists(obj_boss))
{
	x = obj_boss.x;
	y = obj_boss.y - obj_boss.sprite_height / 2;
}