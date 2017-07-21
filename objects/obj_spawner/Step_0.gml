/// @description Spawn Enemies
if (!instance_exists(obj_dron_enemy)) 
{
	repeat(numberOfEnemies) 
	{
		instance_create_layer(x, y, "Enemies", obj_dron_enemy);
	}
	numberOfEnemies *= 2;
}