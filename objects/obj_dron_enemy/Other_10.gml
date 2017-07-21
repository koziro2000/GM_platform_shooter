/// @description Movement State

// Move
hsp = lengthdir_x(moveSpeed, dir);
vsp = lengthdir_y(moveSpeed, dir);
moveObj();

if (distance_to_object(obj_player) <= attack_range)
{
	state_ = ATTACK_;
}