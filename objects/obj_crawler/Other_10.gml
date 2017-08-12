/// @description Idle State
if (distance_to_object(obj_player) <= alert_range)
{
	state_ = crawler_states.walk_;
}

sprite_index = spr_crawler;
image_speed = 1;