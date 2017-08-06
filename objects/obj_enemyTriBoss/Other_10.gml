/// @description Idle State
if (distance_to_object(obj_player) <= alert_range)
{
	state_ = triBossStates.walk_;
}