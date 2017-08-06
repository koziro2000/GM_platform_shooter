/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	var facePlayer = (obj_player.x - x);
	image_xscale = sign(facePlayer);
	dir = point_direction(x, y, obj_player.x, obj_player.y);
	event_user(state_);
}

//Death
if (eHealth <= 0)
{
	instance_destroy();
}