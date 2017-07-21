/// @description HIT state
moveObj();

damage_push = max(0, damage_push -1);

if (damage_push > 0)
{
	var dir = point_direction(obj_player.x, obj_player.y, x, y);
	hsp = lengthdir_x(damage_push, dir);
	vsp = lengthdir_y(damage_push, dir);
}
else
{
	state_ = MOVEMENT_;
	damage_push = 5;
}