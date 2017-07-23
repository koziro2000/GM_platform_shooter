if (global.count_down > 0)
{
	var timer = delta_time/1000000;
	global.count_down -= timer;
	round_time = round(global.count_down);
}
else
{
	instance_destroy(obj_player);
}