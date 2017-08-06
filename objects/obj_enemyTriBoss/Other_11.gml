/// @description Walk State
if (distance_to_object(obj_player) > alert_range)
{
	state_ = triBossStates.idle_;
	exit;
}

if (distance_to_object(obj_player) <= attack_range)
{
	state_ = triBossStates.attack_;
	exit;
}

hsp = lengthdir_x(moveSpeed, dir);
vsp = lengthdir_y(moveSpeed, dir);
vsp = 0;
moveObj();
