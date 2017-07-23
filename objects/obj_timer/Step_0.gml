if (global.infaction <= global.max_infection)
{
	var timer = delta_time/global.infaction_rate;
	global.infaction += timer;
	round_time = round(global.infaction);
}
else
{
	instance_destroy(obj_player);
}