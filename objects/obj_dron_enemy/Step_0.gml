/// @description use state machine

if (instance_exists(obj_player))
{
	dir = point_direction(x, y, obj_player.x, obj_player.y);
	event_user(state_);

}

//Death
if (eHealth <= 0)
{
	instance_destroy();
}